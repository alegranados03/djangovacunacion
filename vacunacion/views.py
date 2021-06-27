from django.shortcuts import redirect, render
from django.http import JsonResponse
from .models import Cita, Ciudadano, Dosis, Municipio, Departamento, Sede
from django.forms.models import model_to_dict
from django.core import serializers

# Create your views here.


def inicio(request):
    citas_asistidas = Cita.objects.filter(asistio=1)
    ciudadanos = set()
    for cita in citas_asistidas:
        ciudadanos.add(cita.ciudadano_id)

    dosis_aplicadas = Dosis.objects.all().count()

    return render(request, 'index.html', {'ciudadanos': len(ciudadanos), 'dosis': dosis_aplicadas})

def getGrafica(request):
    citas_asistidas = Cita.objects.filter(asistio=1)
    ciudadanos = set()
    for cita in citas_asistidas:
        ciudadanos.add(cita.ciudadano_id)
    dosis_aplicadas = Dosis.objects.all().count()
    return JsonResponse({'ciudadanos': len(ciudadanos), 'dosis': dosis_aplicadas}, status=200)
   

def realizarConsulta(request):
    if request.method == 'POST':
        dui = int(request.POST['dui'])
        fecha_nacimiento = request.POST['fecha_nacimiento']
        try:
            ciudadano = Ciudadano.objects.get(
                dui=dui, fecha_nacimiento=fecha_nacimiento)
            return JsonResponse({'ciudadano': model_to_dict(ciudadano)}, status=200)
        except:
            return JsonResponse({'error': 'error'}, status=400)

    return render(request, 'consulta.html')


def registrarReservacion(request, dui):
    if request.method == 'POST':
        Cita.objects.create(
            fecha_cita=request.POST['fecha_cita'],
            ciudadano_id=int(request.POST['dui']),
            sede_id=int(request.POST['sede']),
            asistio=False
        )
        return redirect('inicio')

    departamentos = Departamento.objects.all()
    try:
        ciudadano = Ciudadano.objects.get(dui=dui)
        return render(request, 'reservacion.html', {'ciudadano': ciudadano, 'departamentos': departamentos})
    except:
        return redirect('inicio')


def registrarAplicacion(request):
    if request.method == 'POST':
        cita = Cita.objects.get(ciudadano_id=request.POST['dui'], asistio=0)
        Dosis.objects.create(
            fecha_dosis=request.POST['fecha_aplicacion'],
            dosis_vacunacion=request.POST['dosis'],
            cita_id=cita.id_cita
        )
        cita.asistio = 1
        cita.save()

        return redirect('inicio')
    return render(request, 'aplicacion.html')


def getCiudadano(request):
    if request.method == 'POST':
        dui = int(request.POST['dui'])
        try:
            ciudadano = Ciudadano.objects.get(dui=dui)
            return JsonResponse({'ciudadano': model_to_dict(ciudadano)}, status=200)
        except:
            return JsonResponse({'error': 'error'}, status=400)


def getMunicipios(request):
    if request.method == 'POST':
        id = int(request.POST['departamento'])

        municipios = Municipio.objects.filter(departamento_id=id)
        municipios_serializados = {}
        for i in range(len(municipios)):
            mun = municipios[i]
            x = {'id': mun.id_municipio, 'nombre': mun.nombre_municipio}
            municipios_serializados["{0}".format(i)] = (x)

        return JsonResponse({'municipios': municipios_serializados}, status=200)


def getSedes(request):
    if request.method == 'POST':
        id = int(request.POST['municipio'])
        sedes = Sede.objects.filter(municipio_id=id)
        sedes_serializadas = {}
        for i in range(len(sedes)):
            sede = sedes[i]
            x = {'id': sede.id_sede, 'nombre': sede.nombre_sede}
            sedes_serializadas["{0}".format(i)] = (x)
        return JsonResponse({'sedes': sedes_serializadas}, status=200)
