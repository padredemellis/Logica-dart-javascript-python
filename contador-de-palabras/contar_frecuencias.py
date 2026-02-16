text: str = "hola mundo hola python mundo mundo"

words: list = text.split(" ")
frecuency: dict = {}
for word in words:
    if word in frecuency:
        frecuency[word] += 1
    else:
        frecuency[word] = 1

oneMores: dict = {k: v for k, v in frecuency.items() if v > 1}
print(oneMores)

mostFrecuency: str = max(frecuency, key=frecuency.get)
print(mostFrecuency)

"""
Pieza del código | El ¿Por qué? | El ¿Para qué?
-----------------|--------------|--------------
frecuency.items() | Los diccionarios por defecto solo iteran sobre las llaves.
| Para "desempaquetar" el mapa en pares de (clave, valor)
 y poder usarlos simultáneamente.

{k: v for k, v in ... if v > 1} |
 Es la forma "Pythonic" de procesar colecciones (Dictionary Comprehension).
| Para filtrar y crear un nuevo diccionario de palabras
 repetidas en una sola línea, sin usar bucles for manuales.

max(frec, key=frec.get)
| La función max() por defecto compararía las palabras alfabéticamente.
| Para indicarle a Python que el criterio de comparación
 es el valor (frecuencia) y así obtener la palabra más repetida.
"""
