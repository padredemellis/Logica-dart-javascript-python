"""Crud of dicctionary"""
inventary: dict = {  # creo el diccionario
    'manzana': 1.5,
    'pan': 2.0,
    'leche': 3.5
}
inventary['huevos'] = 4.0  # agrego una clave-valor

print(inventary)

inventary["pan"] = 2.5  # actualizo un valor
print(inventary)
print(f"¿existe café?: {"cafe" in inventary}")  # busco una clave
del inventary['manzana']  # elimino una clave
print(inventary)
# Aqui recorro todos los valores y sumo sin usar for
suma: float = sum(inventary.values())
print(suma)
