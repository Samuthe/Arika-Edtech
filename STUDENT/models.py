from django.db import models

# Create your models here.
from django.contrib.auth.models import User
from ckeditor.fields import RichTextField
# from django_ckeditor_5.fields import RichTextField
# from django_ckeditor_5.widgets import CKEditor5Widget
from django import forms
from cloudinary.models import CloudinaryField




program_list=(
('Holistic development','Holistic development'),
('Play-based learning','Play-based learning'),
('Child-centered approach','Child-centered approach'),
('Inclusive education','Inclusive education'),
('Child protection','Child protection'),
('Child rights','Child rights'),
('Child participation','Child participation'),
('Child development','Child development'),
('Child psychology','Child psychology'),
('Child health','Child health'),
('Child nutrition','Child nutrition'),
('Child safety','Child safety'),
('Child welfare','Child welfare'),
('Child education','Child education'),
('Child care','Child care'),
('Child support','Child support'),
('Child guidance','Child guidance'),
('Child discipline','Child discipline'),
('Child behavior','Child behavior'),
('Child growth','Child growth'),
('Child learning','Child learning'),
('Child motivation','Child motivation'),
('Child assessment','Child assessment'),
('Child evaluation','Child evaluation'),
('Child observation','Child observation'),
('Child measurement','Child measurement'),
('Child management','Child management'),
('Child planning','Child planning'),
('Child teaching','Child teaching'),
('Child training','Child training'),
('Child mentoring','Child mentoring'),
('Child coaching','Child coaching'),
('Child counseling','Child counseling'),
('Child therapy','Child therapy'),
('Child care and protection','Child care and protection'),
('Child care and support','Child care and support'),
('Child care and guidance','Child care and guidance'),
('Child care and discipline','Child care and discipline'),
('Child care and behavior','Child care and behavior'),
('Child care and growth','Child care and growth'),
('Child care and learning','Child care and learning'),
('Child care and motivation','Child care and motivation'),
('Child care and assessment','Child care and assessment'),
('Child care and evaluation','Child care and evaluation'),
('Child care and observation','Child care and observation'),
('Child care and measurement','Child care and measurement'),
('Child care and management','Child care and management'),
('Child care and planning','Child care and planning'),
('Child care and teaching','Child care and teaching'),
('Child care and training','Child care and training'),
('Child care and mentoring','Child care and mentoring'),
('Child care and coaching','Child care and coaching'),
('Child care and counseling','Child care and counseling'),
('Child care and therapy','Child care and therapy'),
('Child protection and support','Child protection and support'),
('Child protection and guidance','Child protection and guidance'),
('Child protection and discipline','Child protection and discipline'),
('Child protection and behavior','Child protection and behavior'),
('Child protection and growth','Child protection and growth'),
('Child protection and learning','Child protection and learning'),
('Child protection and motivation','Child protection and motivation'),
('Child protection and assessment','Child protection and assessment'),
('Child protection and evaluation','Child protection and evaluation'),
('Child protection and observation','Child protection and observation'),
('Child protection and measurement','Child protection and measurement'),
)



class Student(models.Model):
     id=models.AutoField(primary_key=True)
     # program=models.CharField(max_length=5,choices=program_list)
     program=models.CharField(max_length=500, choices=program_list)
     user = models.ForeignKey(User, on_delete=models.CASCADE)

     # student_id=models.ForeignKey(User,on_delete=models.CASCADE)

class Books(models.Model):
     id=models.AutoField(primary_key=True)
     logo=CloudinaryField('image') #use cloudinary field
     # logo=models.ImageField(upload_to="logo")
     file=models.FileField(upload_to="pdf")
     heading=models.CharField(max_length=300)
     description=RichTextField(blank=True,null=True)
     book_name=models.CharField(max_length=300)
     author=models.CharField(max_length=300)
     publication_year=models.IntegerField()
     isbn=models.CharField()
     date=models.DateTimeField(auto_now_add=True)
     program=models.CharField(max_length=300, choices=program_list)
     
     def __str__(self):
          return self.book_name

