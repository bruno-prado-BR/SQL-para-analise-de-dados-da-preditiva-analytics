def meu_decorador(funcao):
    def envolope():
        print("Faz algo antes de executar")
        funcao()
        print("Faz algo depois de executar")

    return envolope

def ola_mundo():
    print("Olá mundo")

ola_mundo = meu_decorador(ola_mundo) #Leva a função ola_mundo para dentro de meu_decorador
ola_mundo()