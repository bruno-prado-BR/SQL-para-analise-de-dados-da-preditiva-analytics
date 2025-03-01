class Estudante:
	escola = "DIO"

	def __init__(self, nome, matricula):
		self.nome = nome
		self.matricula = matricula
	
	def __str__(self):
		return f"{self.nome} - {self.matricula} - {self.escola}"
	
def mostrar_valores(*objs):
    for obj in objs:
        print(obj)

gui = Estudante("Guilherme", 1)
gi = Estudante("Giovana", 2)
mostrar_valores(gui, gi)

Estudante.escola = "Python"
gui.matricula = 3
mostrar_valores(gui, gi)

