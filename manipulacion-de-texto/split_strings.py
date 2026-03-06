'''
/*
Complete la solución para que divida la cadena en cadenas de dos caracteres
en una lista o matriz (según el lenguaje que utilice).
 Si la cadena contiene un número impar de caracteres,
  debe reemplazar el segundo carácter faltante del par final con un guion bajo ('_').
*/
'''
def solution(s: str) -> list:
    if not s:
        return []
    new_list: list = []
    for i in range(0,len(s), 2):
        if i + 1 < len(s):
            new_list.append(s[i] + s[i + 1])
        else:
            new_list.append(s[i] + "_")
    return new_list

print(solution('abcdef'))
print(solution('abc'))