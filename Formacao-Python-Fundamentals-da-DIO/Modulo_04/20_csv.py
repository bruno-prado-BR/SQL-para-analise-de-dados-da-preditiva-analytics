import csv
from pathlib import Path

ROOT_PATH = Path(__file__).parent

#try:
#    with open(ROOT_PATH / "usuarios.csv", "w", encoding="utf-8") as arquivo:
#        escritor = csv.writer(arquivo)
#        escritor.writerow(["id", "nome"])
#        escritor.writerow(["1", "Maria"])
#        escritor.writerow(["2", "João"])
#except IOError as exc:
#    print("Erro ao criar o arquivo: Erro - {exc}")

try:
    with open(ROOT_PATH / "usuarios.csv", "r", encoding="utf-8") as arquivo:
        leitor = csv.reader(arquivo)
        for row in leitor:
            print(row)
except IOError as exc:
    print("Erro ao criar o arquivo: Erro - {exc}")