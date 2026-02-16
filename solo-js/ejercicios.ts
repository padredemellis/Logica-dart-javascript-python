/*
🟦 TypeScript: El Arte de los Arreglos y Objetos


Actualiza un objeto de forma inmutable: cambia el precio de un producto usando el spread operator ....

Busca con .find() el primer usuario que tenga el email "admin@test.com".

Usa Object.entries() para convertir un objeto en una lista y luego imprímelo con un forEach.

Destructura un objeto en una función, asignando un valor por defecto a una propiedad que podría no existir.

Crea un nuevo array que combine dos arrays existentes sin usar .concat().
*/
// Destructura un objeto mascota = {nombre: 'Fido', edad: 4} en dos variables.
const mascota = {nombre: 'Fido', edad: 4};

const { nombre} = mascota;
const { edad } = mascota;

// Destructura los primeros dos elementos de la lista [100, 200, 300, 400].
const numeros: number [] = [100, 200, 300, 400]
const [ primero, segundo ] = numeros;


// Filtra un array de objetos y quédate con los que tienen la propiedad activo: true.
const tareas = [
        {'Aprender Dart': {'horas': 10, 'hecha': true},
        'Aprender TS': {'horas': 8, 'hecha': false},
        'Aprender Python': {'horas': 12, 'hecha': false}
    }
]
const filtro = Object.entries(tareas[0]).filter(([_,{ hecha }]) => hecha);
const tareaHecha = Object.fromEntries(filtro);
console.log(tareaHecha);

// Transforma un array de objetos productos en un array de solo los strings de sus nombres.
const nombreTareas = Object.keys(tareas[0])
console.log(nombreTareas)

// Transforma (map) el objeto para obtener una lista de strings que diga: 'Tarea: [Nombre] - [Horas] horas'"
const mensaje = Object.entries(tareas[0]).map(([nombre, info]) => {
    return `Tarea: ${nombre} - Horas: ${info.horas} horas`;
});
console.log(mensaje);

//Suma todas las horas
const suma = Object.values(tareas[0]).reduce((acc, tarea) => acc + tarea.horas, 0)
console.log(`La suma es ${suma}`)