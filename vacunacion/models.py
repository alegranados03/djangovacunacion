from django.db import models

# Create your models here.


class Ciudadano(models.Model):
    dui = models.IntegerField(primary_key=True)
    nombre_completo = models.CharField(max_length=300)
    direccion = models.CharField(max_length=2000)
    fecha_nacimiento = models.DateField()

    class Meta:
        verbose_name = 'Ciudadano'
        verbose_name_plural = 'Ciudadanos'
        ordering = ['dui']


class Departamento(models.Model):
    id_departamento = models.AutoField(primary_key=True)
    nombre_departamento = models.CharField(max_length=100)

    class Meta:
        verbose_name = 'Departamento'
        verbose_name_plural = 'Departamentos'
        ordering = ['id_departamento']


class Municipio(models.Model):
    id_municipio = models.AutoField(primary_key=True)
    nombre_municipio = models.CharField(max_length=100)
    departamento = models.ForeignKey(Departamento, on_delete=models.RESTRICT)

    class Meta:
        verbose_name = 'Municipio'
        verbose_name_plural = 'Municipios'
        ordering = ['id_municipio']


class Sede(models.Model):
    id_sede = models.AutoField(primary_key=True)
    nombre_sede = models.CharField(max_length=100)
    municipio = models.ForeignKey(Municipio, on_delete=models.RESTRICT)

class Cita(models.Model):
    id_cita = models.AutoField(primary_key=True)
    fecha_cita = models.DateTimeField()
    ciudadano = models.ForeignKey(Ciudadano, on_delete=models.RESTRICT)
    asistio = models.BooleanField(default=False)
    sede = models.ForeignKey(Sede, on_delete=models.RESTRICT)

    class Meta:
        verbose_name = 'Cita'
        verbose_name_plural = 'Citas'
        ordering = ['id_cita']


class Dosis(models.Model):
    id_dosis = models.AutoField(primary_key=True)
    fecha_dosis = models.DateTimeField()
    dosis_vacunacion = models.CharField(max_length=40,default="primera")
    cita = models.ForeignKey(Cita, on_delete=models.RESTRICT)

    class Meta:
        verbose_name = 'Dosis'
        ordering = ['id_dosis']


