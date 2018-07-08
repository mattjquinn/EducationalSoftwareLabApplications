from django.conf.urls import url
from . import views

urlpatterns = [
    url(r'^$', views.index, name='nt.index'),
    url(r'^login/$', views.login, name='nt.login'),
    url(r'^mwanafunzi/([0-9]+)/$', views.mwanafunzi, name='nt.mwanafunzi'),
    url(r'^changamoto/([0-9]+)/([0-9]+)$', views.changamoto, name='nt.changamoto'),
    url(r'^hongera/([0-9]+)/([0-9]+)$', views.hongera, name='nt.hongera'),
    url(r'^reset/([0-9]+)/([0-9]+)$', views.reset, name='nt.reset'),
    url(r'^verifier_update$', views.verifier_update, name='nt.verifier_update'),
]
