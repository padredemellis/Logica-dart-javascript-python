/*
 Cuenta cuántas veces aparece un caracter de forma consecutiva al inicio
    Ejemplo: contar_consecutivos("aaabbc", "a") -> 3
*/
void main() {
  print(contar_consecutivos("AAAAAb", "a"));
  print(contar_consecutivos("AAbb", "a"));
  print(contar_consecutivos("bAAAAb", "b"));
  print(contar_consecutivos("AAAAAb", "e"));
  print(contar_consecutivos("", "x"));
  print(contar_consecutivos("hola", ""));
}

int contar_consecutivos(String texto, String caracter) {
  /*
      Cuenta cuántas veces aparece un caracter de forma consecutiva al inicio
      Ejemplo: contar_consecutivos("aaabbc", "a") -> 3
    */
  if (texto.isEmpty || caracter.isEmpty) {
    return 0;
  }
  String charBusqueda = caracter.toLowerCase();
  int contador = 0;
  for (var c in texto.split("")) {
    if (charBusqueda == c.toLowerCase()) {
      contador += 1;
    } else {
      break;
    }
  }
  return contador;
}
