'''
Docstring for agenda-de-contactos.agenda-contactos
'''
#  Crea un diccionario de contactos anidado
contactos = {
    'Juan': {'telefono': '123456', 'email': 'juan@email.com'},
    'Maria': {'telefono': '789012', 'email': 'maria@email. com'}
}

#   Agrega un nuevo contacto 'Pedro'
contactos['Pedro'] = {'telefono': '789017', 'email': 'pedroemail.com'}
# :  Actualiza el email de 'Juan'
contactos['Juan']['email'] = 'juan02@email.com'
# : Busca un contacto por teléfono usando bucle o comprensión
contactotelefono: dict = {
    k: v for k, v in contactos.items()
    if v['telefono'] == "789017"
}
# : Lista todos los emails usando comprensión de listas
email: list = [v['email'] for v in contactos.values()]
#  Filtra contactos con email válido usando dict comprehension
mail_valido = {k: v for k, v in contactos.items() if "@" in v['email']}
