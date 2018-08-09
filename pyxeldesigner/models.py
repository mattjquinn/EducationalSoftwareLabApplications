from django.db import models, connection
from django.db.models import Sum

class Group(models.Model):
    STREAM_A = 'A'
    STREAM_B = 'B'
    STREAM_CHOICES = (
            (STREAM_A, 'A Stream'),
            (STREAM_B, 'B Stream'),
    )
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=50, blank=False, null=False)
    form = models.IntegerField(blank=False, null=False)
    stream = models.CharField(max_length=1, choices=STREAM_CHOICES)
    bonus_pass_percent = models.IntegerField(default=0)
    total_pass_percent = models.IntegerField(default=0)
    motivation_index = models.IntegerField(default=0)

    def update_rank(self):
      all_progress = Progress.objects.filter(group_id=self.id)
      total_pass_percent = all_progress.filter(passed=True).count() * 100
      with connection.cursor() as cursor:
        cursor.execute("\
                SELECT SUM(rank) FROM (\
                SELECT\
                  RANK() OVER(PARTITION BY prog.problem_id_id \
                          ORDER BY prog.passed_dtstamp) AS rank,\
                    g.name AS group_name, g.id AS group_id, \
                            prob.name, prog.passed_dtstamp\
                    FROM\
                      pyxeldesigner_progress AS prog, pyxeldesigner_group as g, \
                      pyxeldesigner_problem as prob\
                      WHERE prog.group_id_id = g.id\
                        AND prog.problem_id_id = prob.id\
                          AND g.form = %d\
                          AND g.stream = '%s'\
                          AND prog.passed_dtstamp IS NOT NULL) AS rankings\
                          WHERE group_id = %d\
                          GROUP BY group_id;" % (self.form, self.stream, self.id))
        row = cursor.fetchone()
        self.motivation_index = (0 if row is None or row[0] == None else row[0])
        print("%s : first_solves=%s, motivation=%s" \
                % (self.name, total_first_solves, self.motivation_index))
      # IMPORTANT NOTE: the totals below include bonus points.
      self.total_pass_percent = total_pass_percent \
              + self.bonus_pass_percent
      self.save()

    def __str__(self):
        return "%s (%d%s, %s)" % (self.name, self.form, self.stream, self.gender)

class Problem(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=100, blank=False, null=False)
    level = models.IntegerField(blank=False, null=False)
    solution = models.TextField(blank=False, null=False)
    def __str__(self):
        return "%s (Level %d)" % (self.name, self.level)

class Progress(models.Model):
    group_id = models.ForeignKey('Group', on_delete=models.CASCADE)
    problem_id = models.ForeignKey('Problem', on_delete=models.CASCADE)
    latest_submission = models.TextField(blank=True)
    passed = models.BooleanField(default=False)
    started_dtstamp = models.DateTimeField(auto_now_add=True)
    passed_dtstamp = models.DateTimeField(blank=True, null=True)
    def __str__(self):
        return "P%d for %s" % (self.problem_id.id, self.group_id)

class AccessWhitelist(models.Model):
    form = models.IntegerField()
    stream = models.CharField(max_length=1)
    def __str__(self):
        return "%d%s" % (self.form, self.stream)
