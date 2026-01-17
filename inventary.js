const inventary = {
  //creo el objeto
  manzana: 1.5,
  pan: 2.0,
  leche: 3.5,
};
inventary["huevos"] = 4.0; //agrego un par clave-valor
console.log(inventary);
inventary["pan"] = 2.5; //modifico un valor
console.log(inventary);
console.log(`¿existe café?: ${"cafe" in inventary}`); //busco una clave
delete inventary["manzana"]; //elimino una clave
console.log(inventary);
const suma = Object.values(inventary).reduce(
  (total, precio) => total + precio,
  0,
); //sumo el total de los valores con reduce
console.log(`La suma es: ${suma}`);
