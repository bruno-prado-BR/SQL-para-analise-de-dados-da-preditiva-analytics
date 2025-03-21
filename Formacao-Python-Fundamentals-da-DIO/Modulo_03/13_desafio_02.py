class Pessoa:
    def __init__(self, nome, idade):
        self.nome = nome
        self.idade = idade

#TODO: Crie um método para retornar as informações formatas com Nome e Idade:    
    def mostrar_nomes(self, nome, idade):
        print(f"Nome: {nome}, Idade: {idade}")

# Entrada do usuário
nome = input()
idade = int(input())

#TODO: Crie uma instância da pessoa:
pessoas = Pessoa(nome, idade)

#TODO: Chame o método para retornar as informações formatadas e imprima o resultado:
pessoas.mostrar_nomes(nome, idade)