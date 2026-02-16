# TODO: Crea un diccionario con productos y sus precios
inventario: dict = {
    'manzana': 1.5,
    'pan': 2.0,
    'leche': 3.5
}

# TODO: Agrega un nuevo producto 'huevos' con precio 4.0
inventario['huevos'] = 4.0
# TODO: Actualiza el precio de 'pan' a 2.5
inventario['pan'] = 4.0
# TODO: Verifica si existe 'café' en el inventario
verify: bool = 'café' in inventario
# TODO: Elimina 'manzana' del inventario usando pop()
inventario.pop('manzana')
# TODO: Imprime todos los productos y sus precios usando items()
print(inventario.items())
# TODO: Calcula el precio total usando sum() y values()
totalPrice = sum(inventario.values())
print(totalPrice)
