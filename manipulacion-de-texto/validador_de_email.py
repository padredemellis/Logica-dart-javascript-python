emails = [
    'usuario@dominio.com',
    'invalido@',
    'test@ejemplo.co.uk',
    '@sinusuario.com',
    'bien. formado@empresa.org'
]

# Filtra emails válidos usando list comprehension

mailValido: list = [
    mail for mail in emails if (
        mail.count("@") == 1
        and mail.split("@")[0]
        and mail.split("@")[1]
        and "." in mail.split("@")[1]
        and " " not in mail
    )]

print(mailValido)
# Extrae dominios usando split()
partirMail: list = [mail.split("@")[1] for mail in mailValido]
print(partirMail)

# TODO: Cuenta emails por dominio con Counter o diccionario

# TODO: Normaliza a minúsculas con map() o list comprehension
