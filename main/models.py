from django.db import models


# Create your models here.
class HeaderTable(models.Model):
    title = models.CharField(max_length=150)
    description = models.CharField(max_length=500)
    image = models.CharField(max_length=300)
    log_date = models.DateTimeField()
    by_user = models.CharField(max_length=150)


class Testimonial(models.Model):
    name = models.CharField(max_length=150)
    description = models.CharField(max_length=500)
    image = models.CharField(max_length=300)
    log_date = models.DateTimeField()
    by_user = models.CharField(max_length=150)


class OurTeam(models.Model):
    full_name = models.CharField(max_length=150)
    job_title = models.CharField(max_length=150)
    f = models.CharField(max_length=150)
    ins = models.CharField(max_length=150)
    lin = models.CharField(max_length=150)
    xt = models.CharField(max_length=150)
    image = models.CharField(max_length=300)
    log_date = models.DateTimeField()
    by_user = models.CharField(max_length=150)


class Footer(models.Model):
    f = models.CharField(max_length=150)
    ins = models.CharField(max_length=150)
    lin = models.CharField(max_length=150)
    xt = models.CharField(max_length=150)
    phone = models.CharField(max_length=150)
    email = models.CharField(max_length=150)
    newsletter = models.CharField(max_length=150)


class StatisticProgress(models.Model):
    title = models.CharField(max_length=150)
    percent = models.IntegerField()
    description_log_date = models.DateTimeField()
    by_user = models.CharField(max_length=150)


class StatisticWebsite(models.Model):
    experience = models.IntegerField()
    members = models.IntegerField()
    clients = models.IntegerField()
    completed_projects = models.IntegerField()
    description = models.CharField(max_length=500)
    log_date = models.DateTimeField()
    by_user = models.CharField(max_length=150)


class Subscribe(models.Model):
    email = models.CharField(max_length=150)
    description = models.CharField(max_length=500)
    log_date = models.DateTimeField()
    by_user = models.CharField(max_length=150)


class Animations(models.Model):
    img = models.CharField(max_length=300)
    video = models.CharField(max_length=300)
    title = models.CharField(max_length=150)
    description = models.CharField(max_length=500)
    log_date = models.DateTimeField()
    by_user = models.CharField(max_length=150)


class Requests(models.Model):
    full_name = models.CharField(max_length=150)
    email = models.CharField(max_length=150)
    subject = models.CharField(max_length=150)
    message = models.CharField(max_length=150)
    date = models.DateField()
    date_time = models.DateTimeField()


class Pages(models.Model):
    lang = models.CharField(max_length=150)
    text1 = models.CharField(max_length=500)
    text2 = models.CharField(max_length=500)
    text3 = models.CharField(max_length=500)
    text4 = models.CharField(max_length=500)
    text5 = models.CharField(max_length=500)
    text6 = models.CharField(max_length=500)
    text7 = models.CharField(max_length=500)
    title1 = models.CharField(max_length=150)
    title2 = models.CharField(max_length=150)
    title3 = models.CharField(max_length=150)
    title4 = models.CharField(max_length=150)
    title5 = models.CharField(max_length=150)
    title6 = models.CharField(max_length=150)
    title7 = models.CharField(max_length=150)


class Languages(models.Model):
    language = models.CharField(max_length=150)
    lang = models.CharField(max_length=10)
