"""
Tienes este array con líneas sucias.
Crea una función que devuelva un nuevo array que no tenga líneas vacías
 y no tenga la primera línea.
"""
rawData = ["nombre,edad", "Juan,20", " ", "Maria,25", ""]


def limpiar(data):
    """Limpia un array sucio"""
    return [linea for linea in data[1:] if linea.strip()]


print(limpiar(rawData))

'''
Esta solucion es elegante:
Aplico slice de una lista para omitir el primer elemento.
luego aplico la logica del if:
si linea.strip(), es decir si el elemento de la lista
no tiene espacios en blanco
retorno esta nueva lista.
'''
