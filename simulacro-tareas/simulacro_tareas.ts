/*
Tu Misión:

Filtrar y obtener un nuevo diccionario solo con las tareas NO hechas.

Transformar eso en una lista que solo tenga los Nombres de esas tareas.

Acumular (usando reduce o sum) el total de horas de esas tareas pendientes.
*/
const tareas = {
    'Aprender Dart': {'horas': 10, 'hecha': true},
    'Aprender TS': {'horas': 8, 'hecha': false},
    'Aprender Python': {'horas': 12, 'hecha': false}
}
const noHechas = Object.entries(tareas).filter(([nombre, { hecha }]) => !hecha).map((ganadoras) => ganadoras);
console.log(noHechas);
const pendientes = noHechas.map(([nombre]) => nombre);
console.log(pendientes);
const totalHoras: number = noHechas.reduce((acc,[_, { horas }]) => acc + horas, 0);
console.log(totalHoras);

