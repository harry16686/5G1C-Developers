# from django.http import HttpResponse

from django.shortcuts import render
from django.shortcuts import HttpResponse
from django.http import HttpResponseRedirect
import mysql_connection


def index(request):
    context = {}
    return render(request, 'index.html', context)


def hello(request):
    context = {}
    accounts = mysql_connection.find_all_account()
    context['accounts'] = accounts
    return render(request, 'hello.html', context)


def login(request):
    context = {}
    if request.GET.get('username') and request.GET.get('pwd'):
        account = mysql_connection.find_account(request.GET.get('username'), request.GET.get('pwd'))
        if account and account.username:
            request.session['username'] = request.GET.get('username')
            return HttpResponseRedirect("/cars")
        else:
            context["error"] = "username or password error"

    return render(request, 'index.html', context)


def logout(request):
    del request.session['username']
    return HttpResponseRedirect("/index")


def find_cars(request):
    context = {}
    cars = mysql_connection.find_cars(request.GET.get('makename'))
    context['cars'] = cars
    if request.GET.get('makename'):
        context['makename'] = request.GET.get('makename')
    else:
        context['makename'] = ''
    return render(request, 'cars.html', context)


def find_stores(request):
    context = {}
    stores = mysql_connection.find_stores(request.GET.get('name'))
    context['stores'] = stores
    if request.GET.get('name'):
        context['name'] = request.GET.get('name')
    else:
        context['name'] = ''
    return render(request, 'stores.html', context)


def find_customers(request):
    context = {}
    customers = mysql_connection.find_customers(request.GET.get('name'))
    context['customers'] = customers
    if request.GET.get('name'):
        context['name'] = request.GET.get('name')
    else:
        context['name'] = ''
    return render(request, 'customers.html', context)


def customer_index(request):
    context = {}
    return render(request, 'customer_index.html', context)


def customer_car(request):
    context = {}
    cars = mysql_connection.find_cars(request.GET.get('makename'))
    context['cars'] = cars
    if request.GET.get('makename'):
        context['makename'] = request.GET.get('makename')
    else:
        context['makename'] = ''
    return render(request, 'customer_car.html', context)


def customer_login(request):
    context = u'{"code":1}'
    if request.GET.get('username') and request.GET.get('pwd'):
        account = mysql_connection.find_account(request.GET.get('username'), request.GET.get('pwd'))
        if account and account.username:
            request.session['username'] = request.GET.get('username')
            context = u'{"code":0}'

    return HttpResponse(context, content_type='application/json;charset=utf-8')


def customer_logout(request):
    del request.session['username']
    return HttpResponseRedirect("/customer/index")
