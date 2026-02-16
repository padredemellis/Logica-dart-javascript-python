'''
Repasando ando
'''

# Crea una lista de los cuadrados de los números
# del 1 al 10 usando comprensión.

cuadrados: list = [x ** 2 for x in range(1, 11)]
print(cuadrados)

# Filtra una lista de números y quédate solo con los que son múltiplos de 3.
multiploTres: list = [x for x in cuadrados if x % 3 == 0]
print(multiploTres)

# Diccionario: Tienes { 'a': 1, 'b': 2 }.
#  Crea uno nuevo que invierta las llaves por valores.
diccionario: dict = {'a': 1, 'b': 2}
alReves: dict = {valores: claves for claves, valores in diccionario.items()}
print({f"Original: {diccionario} - Invertido: {alReves}"})

# Suma el total de una lista de precios:
# precios = [{'p': 10}, {'p': 20}] usando sum().
precios: list = [{'p': 10}, {'p': 20}]
total: int = sum(item['p'] for item in precios)
print(total)
# Extrae los nombres de un diccionario
#  de usuarios si su edad es mayor a 18.
usuarios: dict = {
    'Emanuel': 34,
    'Melody': 4,
    'Josias': 4,
    'Mayra': 35
}
extraer: dict = {k: v for k, v in usuarios.items() if v > 18}
print(extraer)

donaciones = [
    {'monto': 10},
    {'pago': 20},
    {'monto': 50}
]
total = sum(item.get('monto', 0) + item.get('pago', 0) for item in donaciones)
print(f"Total recolectado: {total}")

# Fusiona dos diccionarios d1 y d2 en uno nuevo (pista: usa **).
dict1 = {'a': 1, 'b': 2}
dict2 = {'b': 3, 'c': 4}
dictFusion: dict = {**dict1, **dict2}
print(dictFusion)

# Busca el valor máximo en un diccionario de puntajes:
#  {'Juan': 50, 'Maria': 80}.
puntajes: dict = {'Juan': 50, 'Maria': 80}
maxPuntaje: str = max(puntajes, key=puntajes.get)
print(maxPuntaje)

# Formatea un string usando f-strings para mostrar
#  "Hola [nombre], tienes [puntos] puntos"
for nombre, puntos in puntajes.items():
    formateado: str = f"Hola {nombre}, tienes {puntos} puntos"
    print(formateado)

# Crea una lista que diga "Par" o "Impar" para números del 1 al 5
#  (usando if/else dentro de la comprensión).
parImpar: list = ["Par" if num % 2 == 0 else "Impar" for num in range(1, 6)]
print(parImpar)
