from django.conf.urls import url
from . import views

urlpatterns = [
    url(r'^$', views.index, name='index'),
    url(r'^login/$', views.login, name='login'),
    url(r'^mwanafunzi/([0-9]+)/$', views.mwanafunzi, name='mwanafunzi'),
    url(r'^changamoto/([0-9]+)/([0-9]+)$', views.changamoto, name='changamoto'),
    url(r'^hongera/([0-9]+)/([0-9]+)$', views.hongera, name='hongera'),
    url(r'^reset/([0-9]+)/([0-9]+)$', views.reset, name='reset'),
    url(r'^save_code$', views.save_code, name='save_code'),
    url(r'^submit_code$', views.submit_code, name='submit_code'),
]

