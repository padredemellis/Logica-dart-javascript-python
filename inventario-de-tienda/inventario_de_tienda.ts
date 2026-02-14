// TODO: Crea un objeto con productos y sus precios
const inventario: Record<string, number> = {
  manzana: 1.5,
  pan: 2.0,
  leche: 3.5
};

// TODO:  Agrega un nuevo producto 'huevos' con precio 4.0
inventario['huevos'] = 4.0;
// TODO: Actualiza el precio de 'pan' a 2.5
inventario.pan = 2.5;
// TODO: Verifica si existe 'café' en el inventario
const verify: boolean = "café" in inventario; 
console.log(verify)
// TODO:  Elimina 'manzana' del inventario
delete inventario.manzana;
// TODO:  Imprime todos los productos y sus precios usando Object.entries()
console.log(Object.entries(inventario));
// TODO: Calcula el precio total usando Object.values()
const totalPrice = Object.values(inventario).reduce((a,b) => a + b);
console.log(totalPrice);