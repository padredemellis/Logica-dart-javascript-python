'''
texto = "  Aprendiendo Python es Divertido  "

# TODO: Elimina espacios con strip()

# TODO: Convierte a minúsculas y mayúsculas

# TODO: Reemplaza "Python" por "Programación" con replace()

# TODO: Verifica si contiene "divertido" usando 'in' (case insensitive)

# TODO: Cuenta vocales usando comprensión de listas

# TODO: Invierte el string usando slicing [: :-1]

# TODO:  Extrae palabras usando split() y slicing
'''
texto: str = "  Aprendiendo Python es Divertido  "
espaciosEliminados: str = texto.strip(" ")
aMinusculas: str = espaciosEliminados.lower()
aMayusculas: str = aMinusculas.upper()
reemplazar: str = espaciosEliminados.replace("Python", "Programación")
print(reemplazar)
verificar: bool = "divertido" in reemplazar.lower()
print(f"Existe??? {verificar}")
invertida: str = espaciosEliminados[:: -1]
print(invertida)
extraerConSplit: list = espaciosEliminados.split()
print(extraerConSplit)
extraerConSlicing: str = espaciosEliminados[0:11]
print(extraerConSlicing)
vocales: list = ["a", "e", "i", "o", "u"]
contarVocales = [letra for letra in espaciosEliminados.lower()
                 if letra in vocales]
print(contarVocales)
print(f"Cantidad de vocales: {len(contarVocales)}")
