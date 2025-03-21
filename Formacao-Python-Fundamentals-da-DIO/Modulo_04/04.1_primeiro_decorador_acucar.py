def meu_decorador(funcao):
    def envolope():
        print("Faz algo antes de executar")
        funcao()
        print("Faz algo depois de executar")

    return envolope

@meu_decorador
def ola_mundo():
    print("Olá mundo")

ola_mundo()