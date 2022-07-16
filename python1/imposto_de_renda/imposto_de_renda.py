print('Calcule seu Imposto de Renda')

salario_bruto = int(input ("qual é o seu salario? "))
#salario_liquido = (salario_bruto - valor_aliquota)
#valor_aliquota = [7.5, 15, 22.5, 27.5]

if salario_bruto <= 1903.98:
    print ("Seu Imposto de Renda é isento da aliquota")

elif salario_bruto >= 1903.99 and salario_bruto <= 2826.65:
     valor_aliquota = (7.5 / 100) # 0.075
     salario_liquido = salario_bruto - (salario_bruto*valor_aliquota)
     print ("Valor da aliquota é de 7,5%")
     print ("Seu salário com desconto do valor da aliquota é: ", salario_liquido)

elif salario_bruto >= 2826.66 and salario_bruto <= 3751.05:
     valor_aliquota = 15
     salario_liquido = (salario_bruto - salario_bruto*(valor_aliquota/100))
     print ("Valor da aliquota é de 15%")
     print ("Seu salário com desconto do valor da aliquota é: ", salario_liquido)

elif salario_bruto >= 3751.06 and salario_bruto <= 4664.68:
     valor_aliquota = 22.5
     salario_liquido = (salario_bruto - salario_bruto*(valor_aliquota/100))
     print ("Valor da aliquota é de 22,5%")
     print ("Seu salário com desconto do valor da aliquota é: ", salario_liquido)

else:
     salario_bruto > 4664.68
     valor_aliquota = 27.5
     salario_liquido = (salario_bruto - salario_bruto*(valor_aliquota/100))
     print ("Valor da aliquota é de 27.5%")
     print ("Seu salario com desconto do valor da aliquota é: ", salario_liquido)
