/*
Tienes este array con líneas sucias. Crea una función que devuelva un nuevo array que no tenga líneas vacías y no tenga la primera línea.
*/
const rawData = ["nombre,edad", "Juan,20", " ", "Maria,25", ""];

// Tu reto:
function limpiar(data) {
    let newData = [...data]
    newData.shift();
    newData = newData.filter((n) => {
        return n.trim().length > 0;
    });
    return newData;
  }


console.log(limpiar(rawData)); // Debería devolver: ["Juan,20", "Maria,25"]