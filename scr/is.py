import json

pathjson_skberge = 'parametro_campana/skberge.json'
with open(pathjson_skberge, 'r') as json_skberge:
    parametros_skberge = json.load(json_skberge)

for campana, parametros in parametros_skberge.items():
    nombre_campa = campana
    code_campa = parametros["code_campa"]
    nombre_asignado = parametros["nombre_asignado"]
    destino = parametros["destino"]

    print(nombre_campa)
    print(code_campa)
    print(nombre_asignado)
    print(destino)
        
    print(10*"=")