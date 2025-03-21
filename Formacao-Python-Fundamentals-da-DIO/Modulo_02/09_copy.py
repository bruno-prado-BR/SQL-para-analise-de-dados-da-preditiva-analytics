lista = [1, "Python", [40, 30, 20]]

lista_2 = lista.copy()

print(lista)

print(id(lista_2), id(lista))

lista_2[0] = 2

print(lista_2)
print(lista)
