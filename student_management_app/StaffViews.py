from django.http import HttpResponse
from django.shortcuts import render

# Create your views here.
def showDemoPage(request):
    return render(request,"demo.html")

def StaffLogin(request):
    return render(request,"staff_login.html")