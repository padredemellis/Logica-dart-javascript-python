const texto: string = "hola mundo hola javascript mundo mundo";

// TODO:  Divide el texto en palabras usando split()
const words: string [] = texto.split(" ");
// TODO: Crea un objeto para contar la frecuencia de cada palabra
let frecuency: Record<string, number> = {};
for (const word of words){
    if (word in frecuency){
        frecuency[word] += 1;
    } else {
        frecuency[word] = 1;
    }
}
console.log(frecuency)

// TODO: Encuentra la palabra más frecuente
const mostFrecuency: [string, number] = Object.entries(frecuency).reduce((a,b) => a[1] > b[1] ? a : b);
console.log(mostFrecuency[0])

// TODO: Filtra y muestra palabras que aparecen más de 1 vez
  const oneMore: string[] = Object.entries(frecuency).filter((count) => count[1] > 1).map((word) => word[0]);
console.log(oneMore);
  //Apuntes
  /*
Pieza del código,El ¿Por qué?,El ¿Para qué?
Object.entries(frecuency),Los objetos no son iterables por defecto como las listas.,"Para ""aplanar"" tu mapa de frecuencias en una lista de pares [palabra, cuenta] que podamos procesar."

.filter((n) => n[1] > 1),"Necesitamos descartar el ""ruido"" (palabras únicas).",Para actuar como un embudo que solo deja pasar los elementos donde el segundo valor (la frecuencia) cumple la condición.

.map((n) => n[0]),"El filtro te devuelve el par completo, pero tú solo quieres el texto.","Para ""limpiar"" el resultado, extrayendo únicamente la palabra y descartando el número que ya no necesitamos."

: string[],TypeScript necesita saber qué forma tiene el resultado final.,"Para asegurarte de que, si intentas usar oneMore después, el editor sepa que es una lista de textos y te ayude con el autocompletado."
*/