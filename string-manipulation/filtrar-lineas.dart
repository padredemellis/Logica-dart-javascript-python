/*
Tienes este array con líneas sucias. Crea una función que devuelva un nuevo array que no tenga líneas vacías y no tenga la primera línea.
*/
void main() {
  List<String> rawData = ["nombre,edad", "Juan,20", " ", "Maria,25", ""];
  print(limpiar(rawData));
}

List<String> limpiar(List<String> data) {
  // Hacemos una copia de la lista original para no modificarla directamente
  List<String> newData = List.from(data);
  
  // Eliminamos la primera línea
  newData.removeAt(0);
  
  // Eliminamos las líneas que estén vacías o tengan solo espacios
  newData.removeWhere((d) => d.trim().isEmpty);
  
  return newData;
}
  
