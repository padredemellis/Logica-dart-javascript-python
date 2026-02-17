texto: str = "  Aprendiendo Python es Divertido  "


# TODO: Elimina espacios con strip()
espaciosEliminados: str = texto.strip(" ")

# TODO: Convierte a minúsculas y mayúsculas
aMinusculas: str = espaciosEliminados.lower()
aMayusculas: str = aMinusculas.upper()

# TODO: Reemplaza "Python" por "Programación" con replace()
reemplazar: str = espaciosEliminados.replace("Python", "Programación")
print(reemplazar)

# TODO: Verifica si contiene "divertido" usando 'in' (case insensitive)
verificar: bool = "divertido" in reemplazar.lower()
print(f"Existe??? {verificar}")

# TODO: Cuenta vocales usando comprensión de listas
invertida: str = espaciosEliminados[:: -1]

# TODO: Invierte el string usando slicing [: :-1]
extraerConSplit: list = espaciosEliminados.split()
print(extraerConSplit)
# TODO:  Extrae palabras usando split() y slicing


extraerConSlicing: str = espaciosEliminados[0:11]
print(extraerConSlicing)
vocales: list = ["a", "e", "i", "o", "u"]
contarVocales = [letra for letra in espaciosEliminados.lower()
                 if letra in vocales]
print(contarVocales)
print(f"Cantidad de vocales: {len(contarVocales)}")
