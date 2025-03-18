from django.contrib.auth.forms import UserCreationForm
from django import forms
from django_ckeditor_5.widgets import CKEditor5Widget
from django.db import models
from .models import User, Student, Books
from django.utils.timezone import make_aware

# ----------------- User Registration Form ----------------- #
class RegisterForm(UserCreationForm):
    username = forms.CharField(widget=forms.TextInput(attrs={'class': 'form-control my-2', 'placeholder': 'Enter Username'}))
    firstname = forms.CharField(widget=forms.TextInput(attrs={'class': 'form-control my-2', 'placeholder': 'Enter Firstname'}))
    lastname = forms.CharField(widget=forms.TextInput(attrs={'class': 'form-control my-2', 'placeholder': 'Enter Lastname'}))
    email = forms.CharField(widget=forms.EmailInput(attrs={'class': 'form-control my-2', 'placeholder': 'Enter Email'}))
    password1 = forms.CharField(widget=forms.PasswordInput(attrs={'class': 'form-control my-2', 'placeholder': 'Enter Password'}))
    password2 = forms.CharField(widget=forms.PasswordInput(attrs={'class': 'form-control my-2', 'placeholder': 'Confirm Password'}))

    class Meta:
        model = User
        fields = ["username", "email", "password1", "password2", "firstname", "lastname"]


# ----------------- Book Form with CKEditor5 ----------------- #
class BooksForm(forms.ModelForm):
    description = models.TextField()  # Ensure config_name is set

    # description = forms.CharField(widget=CKEditor5Widget(config_name="default"), required=False)  # Ensure config_name is set

    class Meta:
        model = Books
        fields = "__all__"
