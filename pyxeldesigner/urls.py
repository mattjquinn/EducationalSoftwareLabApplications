from django.conf.urls import url
from . import views

urlpatterns = [
    url(r'^$', views.index, name='pd.index'),
    url(r'^login/$', views.login, name='pd.login'),
    url(r'^kipindi/([0-9]+)/$', views.kipindi, name='pd.kipindi'),
    url(r'^changamoto/([0-9]+)/([0-9]+)$', views.changamoto, name='pd.changamoto'),
#    url(r'^hongera/([0-9]+)/([0-9]+)$', views.hongera, name='pd.hongera'),
#    url(r'^reset/([0-9]+)/([0-9]+)$', views.reset, name='pd.reset'),
#    url(r'^save_code$', views.save_code, name='pd.save_code'),
#    url(r'^submit_code$', views.submit_code, name='pd.submit_code'),
]

