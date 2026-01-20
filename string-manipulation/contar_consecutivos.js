const contar_consecutivos = (texto, caracter) => {
  /*
      Cuenta cuántas veces aparece un caracter de forma consecutiva al inicio
      Ejemplo: contar_consecutivos("aaabbc", "a") -> 3
    */
  if ((!texto)|| (!caracter)) {
    return 0;
  }
  let charBusqueda = caracter.toLowerCase();
  let contador = 0;
  for (let c of texto) {
    if (charBusqueda == c.toLowerCase()) {
      contador += 1;
    } else {
      break;
    }
  }
  return contador;
}

console.log(contar_consecutivos("AAAAAb", "a"));
console.log(contar_consecutivos("AAbb", "a"));
console.log(contar_consecutivos("bAAAAb", "b"));
console.log(contar_consecutivos("AAAAAb", "e"));
console.log(contar_consecutivos("", "x"));
console.log(contar_consecutivos("hola", ""));