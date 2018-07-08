from django.conf.urls import url
from . import views

urlpatterns = [
    url(r'^$', views.index, name='jm.index'),
    url(r'^login/$', views.login, name='jm.login'),
    url(r'^mwanafunzi/([0-9]+)/$', views.mwanafunzi, name='jm.mwanafunzi'),
    url(r'^changamoto/([0-9]+)/([0-9]+)$', views.changamoto, name='jm.changamoto'),
    url(r'^hongera/([0-9]+)/([0-9]+)$', views.hongera, name='jm.hongera'),
    url(r'^reset/([0-9]+)/([0-9]+)$', views.reset, name='jm.reset'),
    url(r'^save_code$', views.save_code, name='jm.save_code'),
    url(r'^submit_code$', views.submit_code, name='jm.submit_code'),
]

