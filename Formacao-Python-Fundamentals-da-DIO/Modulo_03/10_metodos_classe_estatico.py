class Pessoa:
    def __init__(self, nome=None, idade=None):
        self.nome = nome
        self.idade = idade

    # Usando método de classe com @classmethod e cls como convenção
    @classmethod
    def criar_de_data_nascimento(cls, ano, mes, dia, nome):
        idade = 2024 - ano
        return cls(nome, idade)

    # Método estático
    @staticmethod
    def e_maior_idade(idade):
        return idade >= 18

# p1 = Pessoa("Guilherme", 28)
# print(p1.nome, p1.idade)

p2 = Pessoa.criar_de_data_nascimento(1994, 3, 21, "Guilherme")
print(p2.nome, p2.idade)

print(Pessoa.e_maior_idade(18))
print(Pessoa.e_maior_idade(8))