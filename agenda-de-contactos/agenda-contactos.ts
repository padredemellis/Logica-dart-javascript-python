// TODO: Crea un objeto de contactos anidado
const contactos = {
  Juan: { telefono: '123456', email: 'juan@email.com' },
  Maria: { telefono: '789012', email:  'maria@email.com' }
};

// TODO:  Agrega un nuevo contacto 'Pedro' usando spread operator
const contactosActualizados = {...contactos, Pedro: {'telefono': '789017', 'email': 'pedroemail.com'}};
// TODO: Actualiza el email de 'Juan' de forma inmutable
const juanActualizado = {
  ...contactosActualizados, 
  Juan: {                   
    ...contactosActualizados['Juan'], 
    email: 'juan02@email.com'         
  }
};
// TODO: Busca un contacto por teléfono usando Object.values() y find()
const buscarContacto = Object.values(juanActualizado).find((contacto) => contacto.telefono === '789017'); 
console.log(buscarContacto)
// TODO: Extrae todos los emails usando map()
const allMails: string[] = Object.values(juanActualizado).map((mail) => mail.email);
console.log(allMails)
// TODO: Filtra contactos con email válido (que contenga '@')
const eliminarInvalidos = allMails.filter(m => m.includes('@'))

// Apuntes

/*
Pieza del código,El ¿Por qué?,El ¿Para qué?
"{...contactos, Pedro: {..}}",Los objetos en JS/TS se pasan por referencia.
,Para crear una copia nueva con el nuevo contacto sin modificar (ensuciar) el objeto original.

"{...obj, Juan: {...obj.Juan, email: 'x'}}",El spread operator solo copia un nivel de profundidad (shallow copy).
,Para actualizar un dato anidado (como el email) sin borrar los otros datos de esa persona (como el teléfono).

Object.values(obj).find(),Los objetos no tienen el método .find() directamente.,"Para convertir el mueble en una ""fila de cajones""
 y poder buscar a alguien por su teléfono sin saber su nombre."
Object.values(obj).map(),"Necesitamos extraer datos específicos de cada ""cajón"".
",Para transformar una lista de contactos completos en una simple lista de emails.
*/