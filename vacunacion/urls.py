from django.urls import path

from . import views

urlpatterns = [
    path('', views.inicio, name='inicio'),
    path('realizarConsulta', views.realizarConsulta, name='realizarConsulta'),
    path('registrarAplicacion', views.registrarAplicacion, name='registrarAplicacion'),
    path('registrarReservacion/<int:dui>', views.registrarReservacion, name='registrarReservacion'),
    path('getCiudadano',views.getCiudadano,name='getCiudadano'),
    path('getMunicipios',views.getMunicipios,name='getMunicipios'),
    path('getSedes',views.getSedes,name='getSedes'),
    path('getGrafica',views.getGrafica,name='getGrafica')

]