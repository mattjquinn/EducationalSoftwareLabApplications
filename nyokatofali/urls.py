"""nyokatofali URL Configuration

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
from django.conf.urls import url, include
from django.contrib import admin

from main import views as main

urlpatterns = [
    url(r'^admin/', admin.site.urls),
    url(r'^$', main.index, name='index'),
    url(r'^login/$', main.login, name='login'),
    url(r'^nyokatofali/$', main.ntredirect, name='ntredirect'),
    url(r'^mwanafunzi/([0-9]+)/$', main.mwanafunzi, name='mwanafunzi'),
    url(r'^changamoto/([0-9]+)/([0-9]+)$', main.changamoto, name='changamoto'),
    url(r'^hongera/([0-9]+)/([0-9]+)$', main.hongera, name='hongera'),
    url(r'^reset/([0-9]+)/([0-9]+)$', main.reset, name='reset'),
    url(r'^verifier_update$', main.verifier_update, name='verifier_update'),
]
