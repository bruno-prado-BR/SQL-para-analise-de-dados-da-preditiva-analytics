arquivo = open("lorem.txt", "r")

# print(arquivo.read()) # Retorna o arquivo inteiro
# print(arquivo.readline()) # Retorna linha por linha
# print(arquivo.readlines()) # Retorna uma lista 

while len(linha := arquivo.readline()):
    print(linha)

arquivo.close()