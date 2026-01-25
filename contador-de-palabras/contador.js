const texto = "hola mundo hola javascript mundo mundo";

// TODO:  Divide el texto en palabras usando split()
const listaPalabras = texto.split(' ');
// TODO: Crea un objeto para contar la frecuencia de cada palabra
const frecuencia = {};



for (let palabra of listaPalabras){
    if (palabra in frecuencia){
        frecuencia[palabra] += 1;
    }
    else {
        frecuencia[palabra] = 1;
    }
}
console.log(frecuencia);

// TODO: Encuentra la palabra más frecuente
let palabraFrecuente = "";
let contador = 0;

for (const [c, v] of Object.entries(frecuencia)){
    if( v > contador){
        contador = v;
        palabraFrecuente = c;
    }
}

// TODO: Filtra y muestra palabras que aparecen más de 1 vez
console.log(`La palabra mas frecuente es ${palabraFrecuente} y aparece ${contador}`);
