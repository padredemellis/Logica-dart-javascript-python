"""
 Cuenta cuántas veces aparece un caracter de forma consecutiva al inicio
    Ejemplo: contar_consecutivos("aaabbc", "a") -> 3
"""


def contar_consecutivos(texto: str, caracter: str) -> int:
    """
    Cuenta cuántas veces aparece un caracter de forma consecutiva al inicio
    Ejemplo: contar_consecutivos("aaabbc", "a") -> 3
    """
    if texto == "" or caracter == "":
        return 0
    contador: int = 0
    for c in texto:
        if caracter.lower() == c.lower():
            contador += 1
        else:
            break
    return contador


print(contar_consecutivos("AAAAAb", "a"))
print(contar_consecutivos("AAbb", "a"))
print(contar_consecutivos("bAAAAb", "b"))
print(contar_consecutivos("AAAAAb", "e"))
print(contar_consecutivos("", "x"))
print(contar_consecutivos("hola", ""))
