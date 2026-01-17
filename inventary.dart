void main() {
  Map<String, double> inventary = {
    'manzana': 1.5,
    'pan': 2.0,
    'leche': 3.5,
  }; //creo el objeto

  inventary['huevos'] = 4.0; //agrego un par clave valor
  print(inventary);
  inventary["pan"] = 2.5; //modifico un valor
  print(inventary);
  print('¿existe café?: ${inventary.containsKey("cafe")}'); //busco una clave
  inventary.remove('manzana'); //elimino un par clave valor
  print(inventary);
  double suma = inventary.values.reduce(
    (total, precio) => total + precio,
  ); //sumo todos los valores
  print('La suma es:  $suma');
}
