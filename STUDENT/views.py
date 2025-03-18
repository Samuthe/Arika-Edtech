from django.shortcuts import render, redirect
from django.contrib import messages
from django.contrib.auth import authenticate, login, logout
from .forms import RegisterForm
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from .models import Books  # Ensure this matches your model name

# Home page
def landing(request):
    return render(request, 'landing.html')

def home(request):
    return render(request, 'home.html')

# Login page
def loginpage(request):
    if request.user.is_authenticated:
        messages.warning(request, "You are already Logged in")
        return redirect('/')
    else:
        if request.method == 'POST':
            name = request.POST.get('username')
            passwd = request.POST.get('password')

            user = authenticate(request, username=name, password=passwd)
            if user is not None:
                login(request, user)
                messages.success(request, "Logged in successfully")
                return redirect("/")
            else:
                messages.error(request, "Invalid username or password")
                return redirect('/login')
    return render(request, "login.html")

# Register page
def registerpage(request):   
    form = RegisterForm()
    if request.method == "POST":
        form = RegisterForm(request.POST)
        if form.is_valid():
            form.save()
            messages.success(request, "Registration Successful, Login to continue")
            return redirect('/login')
    context = {'form': form}
    return render(request, "register.html", context)

# Logout page
def logoutpage(request):
    if request.user.is_authenticated:
        logout(request)
        messages.success(request, "Logged out successfully")
    return redirect("/")

# Dashboard (Only accessible when logged in)
@login_required(login_url='login')  
def dashboard(request):
    try:
        student_data = Books.objects.all()  # Ensure the correct model name
    except Exception as e:
        messages.error(request, f"Error fetching data: {e}")
        student_data = []  # Ensure the page doesn't break

    context = {'student_data': student_data}
    return render(request, "dashboard.html", context)




# from django.shortcuts import render,redirect
# from django.contrib import messages
# from django.contrib.auth import authenticate,login,logout
# from .forms import RegisterForm
# from django.contrib.auth.decorators import login_required
# from django.contrib.auth.models import User
# from .models import *


# # Home page

# def home(request):
#     return render(request,'home.html')

# def loginpage(request):
#     if request.user.is_authenticated:
#        messages.warning(request,"You are already Logged in")
#        return redirect('/')
#     else:
#        if request.method=='POST':
#          name=request.POST.get('username')
#          passwd=request.POST.get('password')
      
#          user=authenticate(request,username=name,password=passwd)
#          if user is not None:
#             login(request,user)
#             messages.success(request,"Logged in successfully")
#             return redirect("/")
#          else:
#             messages.error(request,"Invalid username or password")
#             return redirect('/login')
#     return render(request,"login.html")

# def registerpage(request):   
#    form=RegisterForm()
#    if request.method=="POST":
#         form=RegisterForm(request.POST)
#         if form.is_valid():
#             form.save()
#             messages.success(request,"Registration Successfully, Login to continue")
#             #redirect to Login Page
#             return redirect('/login')
#    context={'form':form}
#    return render(request,"register.html",context)
    
# #logout
# def logoutpage(request):
#    if request.user.is_authenticated:
#       logout(request)
#       messages.success(request,"Logged out successfully")
#       return redirect("/")
#    else:
#       return redirect("/")

# @login_required(login_url='login')  
# def dashboard(request):
#     student_data=Books.objects.all()
#     context={'student_data':student_data}
#     return render(request,"dashboard.html",context)


