from django.db import models

class Client(models.Model):
    id = models.IntegerField(primary_key=True)
    username = models.CharField(max_length=20)
    password = models.CharField(max_length=40)
    full_name = models.CharField(max_length=100)
    acct_balance_tzs = models.IntegerField(default=0)

