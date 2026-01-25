void main() {
  String texto = "hola mundo hola dart mundo mundo";

  // Divide el texto en palabras
  List<String> listaPalabras = texto.split(' '); //recibe lo que quieres eliminar, en este caso los espacios vacios y retorna una lista
  print(listaPalabras);

  //Crea un mapa para contar la frecuencia de cada palabra
  Map frecuencia = {}; // creo un mapa vacio

  for (String palabra in listaPalabras) { //itero sobre la lista
    if (frecuencia.containsKey(palabra)) { //esto es similar un un palabra inLista
      frecuencia[palabra] += 1; // le sumo uno si la palabra ya esta en el mapa
    } else {
      frecuencia[palabra] = 1; //si no esta en el mapa lo igualo a uno
    }
  }
  print(frecuencia);

  //Encuentra la palabra más frecuente
  String palabraMayor = '';
  int conteo = 0;

  for (var entrada in frecuencia.entries) {
    if (entrada.value > conteo) {
      conteo = entrada.value;
      palabraMayor = entrada.key;
    }
  }
  //Imprime palabras que aparecen más de 1 vez
  print("La palabra mas frecuente es: ${palabraMayor} y aparece $conteo veces");
}
