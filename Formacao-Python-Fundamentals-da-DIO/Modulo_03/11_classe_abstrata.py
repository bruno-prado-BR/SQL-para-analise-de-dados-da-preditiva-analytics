from abc import ABC, abstractmethod, abstractproperty

class ControleRemoto(ABC):
    @abstractmethod
    def ligar(self):
        pass
    
    @abstractmethod
    def desligar(self):
        pass

    # Todas as filhas da classe pai, precisam implementar essa classe
    @property
    @abstractproperty
    def marca(self):
        pass


class ControleTV(ControleRemoto):
    def ligar(self):
        print("Ligando a TV")
    
    def desligar(self):
        print("Desligando a TV")

    @property
    def marca(self):
        return "Philco"
    
class ControleArCondicionado():
    def ligar(self):
        print("Ligando o Ar Condicionado")

    @property
    def marca(self):
        return "LG"
    
controle = ControleTV()
controle.ligar()
controle.desligar()
print(controle.marca)

controle = ControleArCondicionado()
controle.ligar()
print(controle.marca)