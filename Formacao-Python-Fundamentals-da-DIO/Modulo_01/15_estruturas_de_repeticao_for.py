
texto = input("Informa um texto: ")
VOGAIS = "AEIOU"

# Exemplo utilizando um iterável
for letra in texto:
    if letra.upper() in VOGAIS: # upper() transforma tudo em maiúsculo.
        print(letra, end="")
    else:
        print()   # Adiciona a quebra de linha.

# Exemplo utilizando a função built-in range
for numero in range(0, 51, 5):
    print(numero)