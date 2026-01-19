"""
Docstring for contador-de-palabras.contador
"""
texto: str = "hola mundo hola python mundo mundo"  # string original
texto_a_palabras: list = texto.split()  # convierto la string a lista
print(texto_a_palabras)  # imprimo para ver la lista
frecuencia: dict = {}  # creo un dicc vacio al cual le agregare el contador
for palabra in texto_a_palabras:  # itero la lista
    if palabra in frecuencia:  # si la palabra esta en la lista la sumo
        frecuencia[palabra] += 1
    else:
        frecuencia[palabra] = 1  # si no esta en la lista la agrego
print(frecuencia)
mayorOcurrencia: str = ''
for c, v in frecuencia.items():
    numeroMayor = max(v.values())
    if v == numeroMayor:
        mayorOcurrencia = c.keys()
print(mayorOcurrencia)
