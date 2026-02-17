
const texto: string = "  Aprendiendo JavaScript es Divertido  ";

// TODO: Elimina espacios con trim()
const espaciosEliminados: string = texto.trim();
console.log(espaciosEliminados);
// TODO: Convierte a minúsculas y mayúsculas
const aMayusculas: string = espaciosEliminados.toLocaleUpperCase();
const aMinusculas: string = espaciosEliminados.toLocaleLowerCase();
console.log(aMayusculas);
// TODO:  Reemplaza "JavaScript" por "Programación" con replace()
const reemplazar: string = espaciosEliminados.replace("Javascript", "Programación");
// TODO: Verifica si incluye "divertido" (case insensitive)
const verifica: boolean = reemplazar.includes("divertido");

// TODO: Cuenta vocales usando match() con regex
const contarVocales = reemplazar.match(/[aeiou]/gi);
console.log(contarVocales ? contarVocales.length : 0);
// TODO: Invierte el string usando split(), reverse() y join()
const cortarTexto: string[] = reemplazar.split(" ");
const invertirConReverse: string[] = cortarTexto.reverse();
const unir: string = invertirConReverse.join(' ');
console.log(unir);
// TODO: Extrae palabras usando slice() o substring()
const extraer = unir.slice(0,9);
console.log(extraer)
const extraerconSub = unir.substring(0,9);
console.log(extraerconSub)