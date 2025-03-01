import os
import shutil
from pathlib import Path #Importar o diretório que estamos usando

ROOT_PATH = Path(__file__).parent # .parent - traz o caminho acima da minha pasta
# os.mkdir(ROOT_PATH / "diretorio-teste2")

arquivo = open(ROOT_PATH / "novo.txt", "w")
arquivo.close()

os.rename(ROOT_PATH / "novo.txt", ROOT_PATH / "alterado.txt")

os.remove(ROOT_PATH, "alterado.txt")

