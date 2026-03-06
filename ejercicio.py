def move_zeros(lst) -> list:
    newList: list = []
    for n in lst:
        if n == 0:
            newList.insert(len(newList), n)
        else:
            newList.append(n)
    return newList

print(move_zeros([1, 0, 1, 2, 0, 1, 3]))