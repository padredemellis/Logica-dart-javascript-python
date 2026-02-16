void main() {
  // TODO: Crea un mapa de contactos con nombre, teléfono y email
  Map<String, Map<String, String>> contactos = {
    'Juan': {'telefono': '123456', 'email': 'juan@email.com'},
    'Maria': {'telefono': '789012', 'email': 'maria@email.com'},
  };

  // TODO:  Agrega un nuevo contacto 'Pedro'
  contactos['Pedro'] = {'telefono': '789017', 'email': 'pedroemail.com'};
  // TODO:  Actualiza el email de 'Juan'
  contactos['Juan']!['email'] = 'juan02@email.com';
  // TODO:  Busca un contacto por teléfono '789012'
  List<String> busqueda = contactos.entries
      .where((entry) => entry.value['telefono'] == '789012')
      .map((entry) => entry.key)
      .toList();
  print(busqueda);
  //TODO: Lista todos los emails
  List<String> emails = contactos.entries
      .map((entry) => entry.value['email']!)
      .toList();
  print(emails);
  // TODO: Elimina contactos sin email válido (que no contengan '@')
  contactos.removeWhere((key, value) => !value['email']!.contains("@"));
  print(contactos);
}
//Apuntes
/*
Pieza del código,El ¿Por qué?,El ¿Para qué?
contactos['Juan']!['email'],Estamos navegando en dos niveles de mapas.
,Para realizar un acceso quirúrgico y cambiar solo una propiedad interna de forma directa y rápida.
contactos.removeWhere(),Borrar manualmente dentro de un bucle puede causar errores de índice.
,Para limpiar el mapa original eliminando todos los contactos que cumplan una condición (como no tener el @) de un solo golpe.
.entries.where().map(),Los mapas de Dart son iterables a través de sus entradas.
,"Para filtrar por una propiedad interna (valor) y devolver otra propiedad (llave), como buscar el nombre del dueño de un teléfono."
*/