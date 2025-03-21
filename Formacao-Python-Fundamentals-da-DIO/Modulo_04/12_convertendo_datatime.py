from datetime import datetime

data_hora_atual = datetime.now()
data_hora_string = "2024-10-20 10:20"
mascara_ptbr = "%d/%m/%Y %H:%M %a"
mascara_en = "%Y-%m-%d %H:%M"
print(data_hora_atual.strftime(mascara_ptbr))

print(datetime.strptime(data_hora_string, mascara_en))