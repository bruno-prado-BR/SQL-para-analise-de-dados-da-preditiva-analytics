def verificador_ano_bissexto():
    ano = int(input())

# TODO: Verifique se o ano é bissexto utilizando uma estrutura de controle condicional, como if/else:
    divisivel_por_quatro = ano % 4
    divisivel_por_cem = ano % 100
    divisivel_por_quatrocentos = ano % 400

    if divisivel_por_quatro == 0 and not divisivel_por_cem == 0:
        print("SIM")
    elif divisivel_por_quatrocentos == 0:
        print("SIM")
    else:
        print("NÃO")
verificador_ano_bissexto()