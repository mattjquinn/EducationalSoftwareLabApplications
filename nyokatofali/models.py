from django.db import models, connection
from django.db.models import Sum

class Student(models.Model):
    MALE = 'M'
    FEMALE = 'F'
    GENDER_CHOICES = (
            (MALE, 'Male'),
            (FEMALE, 'Female'),
    )
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
    gender = models.CharField(max_length=1, choices=GENDER_CHOICES)
    total_submissions = models.IntegerField(default=0)
    bonus_pass_percent = models.IntegerField(default=0)
    bonus_first_solves_in_stream = models.IntegerField(default=0)
    total_pass_percent = models.IntegerField(default=0)
    total_first_solves_in_stream = models.IntegerField(default=0)
    motivation_index = models.IntegerField(default=0)

    def update_rank(self):
      all_progress = Progress.objects.filter(student_id=self.id)
      total_pass_percent = all_progress\
              .aggregate(Sum('passed_tests_percent'))['passed_tests_percent__sum']
      if total_pass_percent == None:
          total_pass_percent = 0
      total_submissions = all_progress\
                  .aggregate(Sum('num_submissions'))['num_submissions__sum']
      if total_submissions == None:
          total_submissions = 0
      with connection.cursor() as cursor:
        cursor.execute("\
              SELECT COUNT(*) AS total FROM (\
                SELECT DISTINCT ON (p.problem_id_id, s.gender)\
                  s.id, s.name, s.gender, p.problem_id_id, p.passed_dtstamp\
                FROM nyokatofali_student AS s, nyokatofali_progress AS p\
                WHERE s.id = p.student_id_id\
                  AND p.passed_tests_percent = 100\
                  AND s.form = %d\
                  AND s.stream = '%s'\
                ORDER BY p.problem_id_id, s.gender, p.passed_dtstamp) AS subquery\
              WHERE id = %d;" % (self.form, self.stream, self.id))
        row = cursor.fetchone()
        total_first_solves = row[0]
        cursor.execute("\
          SELECT SUM(rank) FROM (\
            SELECT\
              RANK() OVER(PARTITION BY prog.problem_id_id \
                          ORDER BY prog.passed_dtstamp) AS rank,\
              s.name AS student_name, s.id AS student_id, \
              prob.name, prog.passed_dtstamp\
              FROM\
                nyokatofali_progress AS prog, nyokatofali_student as s, \
                nyokatofali_problem as prob\
              WHERE prog.student_id_id = s.id\
                AND prog.problem_id_id = prob.id\
                AND s.form = %d\
                AND s.stream = '%s'\
                AND prog.passed_dtstamp IS NOT NULL) AS rankings\
            WHERE student_id = %d\
            GROUP BY student_id;" % (self.form, self.stream, self.id))
        row = cursor.fetchone()
        self.motivation_index = (0 if row is None or row[0] == None else row[0])
        print("%s : first_solves=%s, motivation=%s" \
          % (self.name, total_first_solves, self.motivation_index))

      self.total_submissions = total_submissions
      # IMPORTANT NOTE: the totals below include bonus points.
      self.total_pass_percent = total_pass_percent \
              + self.bonus_pass_percent
      self.total_first_solves_in_stream = total_first_solves \
              + self.bonus_first_solves_in_stream
      self.save()

    def __str__(self):
        return "%s (%d%s, %s)" % (self.name, self.form, self.stream, self.gender)

class Problem(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=100, blank=False, null=False)
    level = models.IntegerField(blank=False, null=False)
    html_desc = models.TextField(blank=False, null=False)
    initial_code = models.TextField(blank=False, null=False)
    verify_code = models.TextField(blank=False, null=False)
    def __str__(self):
        return "%s (Level %d)" % (self.name, self.level)

class Progress(models.Model):
    student_id = models.ForeignKey('Student', on_delete=models.CASCADE)
    problem_id = models.ForeignKey('Problem', on_delete=models.CASCADE)
    latest_submission = models.TextField(blank=True)
    num_submissions = models.IntegerField(default=0)
    passed_tests_percent = models.IntegerField(default=0)
    started_dtstamp = models.DateTimeField(auto_now_add=True)
    passed_dtstamp = models.DateTimeField(blank=True, null=True)
    def __str__(self):
        return "P%d for %s" % (self.problem_id.id, self.student_id)

class AccessWhitelist(models.Model):
    form = models.IntegerField()
    stream = models.CharField(max_length=1)
    def __str__(self):
        return "%d%s" % (self.form, self.stream)
