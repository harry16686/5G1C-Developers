"""crc URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.11/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf.urls import url
from django.contrib import admin
from . import view

urlpatterns = [
    url(r'^admin/', admin.site.urls),
    url(r'^index', view.index),
    url(r'^hello', view.hello),
    url(r'^login', view.login),
    url(r'^logout', view.logout),
    url(r'^cars', view.find_cars),
    url(r'^stores', view.find_stores),
    url(r'^customers', view.find_customers),
    url(r'^customer/index', view.customer_index),
    url(r'^customer/car', view.customer_car),
    url(r'^customer/login', view.customer_login),
    url(r'^customer/logout', view.customer_logout),
    url(r'^', view.index),
]
