void main() {
  // TODO: Crea un mapa con productos y sus precios
  Map<String, double> inventario = {'manzana': 1.5, 'pan': 2.0, 'leche': 3.5};

  // TODO: Agrega un nuevo producto 'huevos' con precio 4.0
  inventario['huevos'] = 4.0;
  // TODO: Actualiza el precio de 'pan' a 2.5
  inventario['pan'] = 2.5;
  // TODO:  Verifica si existe 'café' en el inventario
  bool verifyKey = inventario.containsKey('café');
  print(verifyKey);
  // TODO: Elimina 'manzana' del inventario
  inventario.remove('manzaba');
  // TODO:  Imprime todos los productos y sus precios
  print(inventario);
  // TODO: Calcula el precio total de todos los productos
  double totalPrice = inventario.values.reduce((a, b) => a + b);
  print(totalPrice);
}
