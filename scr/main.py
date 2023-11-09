from web_scraper import descargaReportes
from isdb import TablaValidacion2
import time
import datetime
import subprocess
import json

# Paso 1: Descarga de Reportes
#Rango de fechas para descarga de Reportes
D0 =  datetime.date.today()
D_1 =  D0 + datetime.timedelta(days=-1)
inicio = str(D_1) #'2023-11-04'
fin = str(D_1) #None#'2023-08-08'

periodo = str(D0.month)+ str(D0.year)
if D0.month < 10:
    periodo = "0" + periodo

username = '1890'
password = '47935979'

tablaValidacion = TablaValidacion2()
tablaValidacion.crearBD()
tablaValidacion.crearTabla()
tablaValidacion.truncateTable()

descarga = descargaReportes()
def logueo():
    descarga.login()
    descarga.iniciarSesion(username, password)
    inicioSesion = descarga.validaInicioSesion()
    
    while not inicioSesion:
        descarga.reiniciar()
        descarga.login()
        descarga.iniciarSesion(username, password)
        inicioSesion = descarga.validaInicioSesion()
    else:
        print('Inicio de Sesion Exitosa')
        pass
    
        
logueo()
fecD0 = False
contador_descargas = 1
campana = "skberge"
# ==== Campana SKBerge ===
pathjson_skberge = 'parametro_campana/skberge.json'
with open(pathjson_skberge, 'r') as json_skberge:
    parametros_skberge = json.load(json_skberge)

for campana, parametros in parametros_skberge.items():
    nombre_campa = campana
    code_campa = parametros["code_campa"]
    nombre_asignado = parametros["nombre_asignado"]
    destino_reporte = parametros["destino"]

    def descarga_reporte():
        try:
            descarga.generar_reporte(code_campa, periodo)
            nombre = descarga.nombreReporte(nombre_asignado, inicio, fin, fecD0)
            destino = descarga.directoryPath + destino_reporte
            descarga.renombrarReubicar(nombre, destino)

            datos=[(contador_descargas, campana, nombre_asignado, 1)]
            tablaValidacion.agregarVariosDatos(datos)

        except Exception as e:
            datos=[(contador_descargas, campana, nombre_asignado, 0)]
            tablaValidacion.agregarVariosDatos(datos)
            pass

    descarga_reporte()
    ultimoRegistro = tablaValidacion.leerDatos()
    descargo = ultimoRegistro[0][3]

    while descargo == 0:
        tablaValidacion.deleteTable(contador_descargas)

        descarga.reiniciar()
        logueo()

        descarga_reporte()
        ultimoRegistro = tablaValidacion.leerDatos()
        descargo = ultimoRegistro[0][3]
    else:
        contador_descargas += 1
        pass
    print("descargo reporte ", code_campa)

# === fin Campana skberge ===

descarga.cerrarSesion()
descarga.gameOver()
print("Descarga exitosa, periodo ", periodo)
