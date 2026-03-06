/*
Complete la solución para que divida la cadena en cadenas de dos caracteres
en una lista o matriz (según el lenguaje que utilice).
 Si la cadena contiene un número impar de caracteres,
  debe reemplazar el segundo carácter faltante del par final con un guion bajo ('_').
*/
void main() {
  print(solution('abcdef'));
  print(solution('abc'));
}

List<String> solution(String s) {
  if (s.isEmpty) {
    return [];
  }
  List<String> new_list = [];
  for (int i = 0; i < s.length; i += 2) {
    if (i + 1 < s.length) {
      new_list.add(s[i] + s[i + 1]);
    } else {
      new_list.add(s[i] + "_");
    }
  }
  return new_list;
}
