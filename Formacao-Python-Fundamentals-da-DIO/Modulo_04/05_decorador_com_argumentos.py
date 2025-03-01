def meu_decorador(funcao):
    def envolope(*args, **kwargs):
        print("Faz algo antes de executar")
        funcao(*args, **kwargs)
        print("Faz algo depois de executar")

    return envolope

@meu_decorador
def ola_mundo(nome):
    print(f"Olá mundo {nome}!")

ola_mundo("Bruno")