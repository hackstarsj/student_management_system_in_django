from django.http import HttpResponse
from django.shortcuts import render

# Create your views here.
def showDemoPage(request):
    return render(request,"demo.html")

def adminLogin(request):
    return render(request,"hod_login.html")