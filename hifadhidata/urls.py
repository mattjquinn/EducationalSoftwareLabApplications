from django.conf.urls import url
from . import views

urlpatterns = [
    url(r'^$', views.index, name='hd.index'),
    url(r'^login/$', views.login, name='hd.login'),
    url(r'^mwanafunzi/([0-9]+)/$', views.mwanafunzi, name='hd.mwanafunzi'),
    url(r'^changamoto/([0-9]+)/([0-9]+)$', views.changamoto, name='hd.changamoto'),
    url(r'^hongera/([0-9]+)/([0-9]+)$', views.hongera, name='hd.hongera'),
    url(r'^reset/([0-9]+)/([0-9]+)$', views.reset, name='hd.reset'),
    url(r'^save_code$', views.save_code, name='hd.save_code'),
    url(r'^submit_code$', views.submit_code, name='hd.submit_code'),
]

