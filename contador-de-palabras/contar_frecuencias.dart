import 'dart:math';

void main() {
  String texto = "hola mundo hola dart mundo mundo";

  // TODO:  Divide el texto en palabras
  List<String> words = texto.split(" "); 
  print(words);
  // TODO: Crea un mapa para contar la frecuencia de cada palabra
  Map<String, int> frecuency = {}; 
  for (String word in words) { 
    if (frecuency.containsKey(word)) { 
      frecuency[word] = frecuency[word]! + 1; 
    } else {
      frecuency[word] = 1; 
    }
  }
  // TODO:  Encuentra la palabra más frecuente
  MapEntry mostFrequentWord = frecuency.entries.reduce( 
    (a, b) => a.value > b.value ? a : b,
  );
  String winner = mostFrequentWord.key.toString();
  print(winner);
  // TODO: Imprime palabras que aparecen más de 1 vez
  List oneMore = frecuency.entries.where((n) => n.value > 1).map((n) => n.key).toList();
  print(oneMore);
}
// Apuntes
/*
Método / Propiedad,¿Por qué se usa?,¿Para qué sirve?
.split() ✂️,Para segmentar una cadena de texto larga.,Convierte un String en una List<String> basada en un separador (como un espacio).

.containsKey() 🔍,"Para evitar errores de ""valor nulo"".",Verifica si una clave ya existe en el Map antes de intentar operar con su valor.

.entries 🎟️,Para tratar el mapa como una lista de pares.,"Transforma el Map en un Iterable de objetos MapEntry, permitiendo usar métodos de listas."

.reduce() 🔄,Para consolidar toda una lista en un solo resultado.,"Compara los elementos uno a uno (como un torneo) hasta que solo queda un ""ganador""."

.where() 🧪,Para limpiar o segmentar datos.,Filtra la colección y deja pasar solo los elementos que cumplen una condición lógica.

.map() 🎨,Para transformar la naturaleza de los datos.,Toma cada elemento y lo convierte en algo distinto (ej: de un objeto MapEntry a solo un String).

.toList() 📦,"Para ""materializar"" el resultado.",Convierte los procesos intermedios (Iterables) en una lista real que puedes guardar o imprimir.
*/