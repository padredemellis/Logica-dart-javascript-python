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
contador: int = 0

for c, v in frecuencia.items():

    if v > contador:
        contador = v
        mayorOcurrencia = c
print(
    f"La palabra que aparece mas veces es '{mayorOcurrencia}' "
    f"y aparece {contador} veces"
)
