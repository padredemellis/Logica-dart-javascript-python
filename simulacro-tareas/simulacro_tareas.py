'''
Tu Misión:

Filtrar y obtener un nuevo diccionario solo con las tareas NO hechas.

Transformar eso en una lista que solo tenga los Nombres de esas tareas.

Acumular (usando reduce o sum) el total de horas de esas tareas pendientes.
'''
# Versión Python
tareas: dict = {
    'Aprender Dart': {'horas': 10, 'hecha': True},
    'Aprender TS': {'horas': 8, 'hecha': False},
    'Aprender Python': {'horas': 12, 'hecha': False}
}

noHechas: dict = {
    key: value for key, value in tareas.items()
    if not value['hecha']
    }
tareasNoHechas: list = list(noHechas.keys())
tiempo: int = sum(v['horas'] for v in noHechas.values())
