class Animal():
    def __init__(self, nro_patas):
        self.nro_patas = nro_patas

    def __str__(self):
        return f"{self.__class__.__name__}: {', '.join([f'{chave}={valor}' for chave, valor in self.__dict__.items()])}"

class Ave(Animal):
    def __init__(self, cor_do_bico, **kw):
        self.cor_do_bico = cor_do_bico
        super().__init__(**kw)

class Mamifero(Animal):
    def __init__(self, cor_do_pelo, **kw):
        self.cor_do_pelo = cor_do_pelo
        super().__init__(**kw)

class Cachorro(Mamifero):
    pass

class Gato(Mamifero):
    pass

class Leao(Mamifero):
    pass

class Ornitorrinco(Mamifero, Ave):
    def __init__(self, cor_do_bico, cor_do_pelo, nro_patas):
        print(Ornitorrinco.__mro__) # Ajuda para saber a ordem que o código está sendo executado

        super().__init__(cor_do_pelo=cor_do_pelo, cor_do_bico=cor_do_bico, nro_patas=nro_patas)

gato = Gato(nro_patas=4, cor_do_pelo="Preto")
print(gato)

ornitorrinco = Ornitorrinco(nro_patas=2, cor_do_pelo="Vermelho", cor_do_bico="Laranja")
print(ornitorrinco)