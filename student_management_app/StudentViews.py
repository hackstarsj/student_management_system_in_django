from django.http import HttpResponse
from django.shortcuts import render

# Create your views here.
def showDemoPage(request):
    return render(request,"demo.html")


def StudentLogin(request):
    return render(request,"student_login.html")