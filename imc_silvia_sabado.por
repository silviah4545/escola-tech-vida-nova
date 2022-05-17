programa
{
	funcao inicio()
	{
		cadeia nome, sexo="", entrevistar ="s"
		inteiro contador=0, idade
		real peso=0.0, altura=0.0, imc
		
		real qtde_mJ=0.0, qtde_mA=0.0, qtde_mE=0.0
		real qtde_hJ=0.0, qtde_hA=0.0, qtde_hE=0.0
		real media_idade=0.0, media_altura=0.0, media_peso=0.0
		
		real media_ida_mJ=0.0, media_ida_mA=0.0, media_ida_mE=0.0 
		real media_alt_mJ=0.0, media_alt_mA=0.0, media_alt_mE=0.0
		real media_peso_mJ=0.0, media_peso_mA=0.0, media_peso_mE=0.0
		
		real media_ida_hJ=0.0, media_ida_hA=0.0, media_ida_hE=0.0 
		real media_alt_hJ=0.0, media_alt_hA=0.0, media_alt_hE=0.0
		real media_peso_hJ=0.0, media_peso_hA=0.0, media_peso_hE=0.0

		real total_ida_mJ=0.0, total_ida_mA=0.0, total_ida_mE=0.0 
		real total_alt_mJ=0.0, total_alt_mA=0.0, total_alt_mE=0.0
		real total_peso_mJ=0.0, total_peso_mA=0.0, total_peso_mE=0.0
		
		real total_ida_hJ=0.0, total_ida_hA=0.0, total_ida_hE=0.0
		real total_alt_hJ=0.0, total_alt_hA=0.0, total_alt_hE=0.0
		real total_peso_hJ=0.0, total_peso_hA=0.0, total_peso_hE=0.0

		enquanto (entrevistar =="s" ou entrevistar =="S") 
		{
		contador = contador++
		
		escreva ("Digite sua idade: ")
		leia (idade)
		
			se (idade <18)
				{
				escreva ("Você não pode participar desta pesquisa\n")
				}
			senao 
				{
				escreva ("Digite seu nome: ")
				leia (nome)

				escreva ("Digite seu peso: ")
				leia (peso)

				escreva ("Digite sua altura: ")
				leia (altura)

				escreva ("Digite seu genero: F ou M\n")
				leia (sexo)
				
		//calcular imc
			imc = peso /(altura * altura)

			se (imc >= 18.5 e imc <=29.9) 
				{
				escreva ("Seu peso está ok \n")
				}
				senao se (imc >= 30)
				{
				escreva ("Sobrepeso \n")
				}
				senao se (imc < 18.5)
				{
				escreva("Você esta abaixo do peso\n")
				}
				}
		//se for feminino		
			se (sexo == "F" ou sexo =="f")
			{
				se (idade >=18 e idade <=32) //jovem
				{
		//quantidade de mulheres jovens que respomderam a entrevista 			
				(qtde_mJ) = (qtde_mJ++)	//invrementa
		   //soma das idades, alturas e pesos		
				total_ida_mJ = (total_ida_mJ + idade)
				total_alt_mJ = (total_alt_mJ + altura)
				total_peso_mJ = (total_peso_mJ + peso)
		   //médias
				media_ida_mJ = (total_ida_mJ / qtde_mJ)
				media_alt_mJ = (total_alt_mJ / qtde_mJ)
				media_peso_mJ = (total_peso_mJ / qtde_mJ)
				}  
					
				se (idade >=33 e idade <=61) //adulto
				{
		//quantidade de mulheres adultas que respomderam a entrevista			
				(qtde_mA) = (qtde_mA++)  //incrementa
		   //soma das idades, alturas e pesos			
				total_ida_mA = (total_ida_mA + idade)
				total_alt_mA = (total_alt_mA + altura)
				total_peso_mA = (total_peso_mA + peso)
		   //médias
		          media_ida_mA = (total_ida_mA / qtde_mA)
				media_alt_mA = (total_alt_mA / qtde_mA)
				media_peso_mA = (total_peso_mA / qtde_mA) 
				}
				senao se (idade >=61) //expert
				{
		//quantidade de mulheres expert que respomderam a entrevista			
				(qtde_mE) = (qtde_mE++)	//incrementa
		   //soma das idades, alturas e pesos		
				total_ida_mE = (total_ida_mE + idade)
				total_alt_mE = (total_alt_mE + altura)
				total_peso_mE = (total_peso_mE + peso)		
		   //médias		
				media_ida_mE = (total_ida_mE / qtde_mE)
				media_alt_mE = (total_alt_mE / qtde_mE)
				media_peso_mE = (total_peso_mE / qtde_mE)
				  
				}
			}
				senao //se for masculino
				    {
					se (idade >=18 e idade <=32) //jovem
				    {
		//quantidade de homens jovens que respomderam a entrevista 			
				(qtde_hJ) = (qtde_hJ++)	//invrementa
		   //soma das idades, alturas e pesos		
				total_ida_hJ = (total_ida_hJ + idade)
				total_alt_hJ = (total_alt_hJ + altura)
				total_peso_hJ = (total_peso_hJ + peso)
		   //médias
				media_ida_hJ = (total_ida_hJ / qtde_hJ)
				media_alt_hJ = (total_alt_hJ / qtde_hJ)
				media_peso_hJ = (total_peso_hJ / qtde_hJ)
				  
				    }				
					senao se (idade >=33 e idade <=61) //adulto
				    {
		//quantidade de homens adultos que respomderam a entrevista 			
				(qtde_hA) = (qtde_hA++)	//invrementa
		   //soma das idades, alturas e pesos		
				total_ida_hA = (total_ida_hA + idade)
				total_alt_hA = (total_alt_hA + altura)
				total_peso_hA = (total_peso_hA + peso)
		   //médias
				media_ida_hA = (total_ida_hA / qtde_hA)
				media_alt_hA = (total_alt_hA / qtde_hA)
				media_peso_hA = (total_peso_hA / qtde_hA)
				 
				    }
					senao se (idade >=61) //expert
				    {
		//quantidade de homens experts que respomderam a entrevista 			
				(qtde_hE) = (qtde_hE++)	//invrementa
		   //soma das idades, alturas e pesos		
				total_ida_hE = (total_ida_hE + idade)
				total_alt_hE = (total_alt_hE + altura)
				total_peso_hE = (total_peso_hE + peso)
		   //médias
				media_ida_hE = (total_ida_hE / qtde_hE)
				media_alt_hE = (total_alt_hE / qtde_hE)
				media_peso_hE = (total_peso_hE / qtde_hE)
				  
				  }
				}
			     escreva ("Deseja responder novamente? S ou N \n")
			     leia (entrevistar)
		}
			     escreva ("\nQuantidade de Entrevistados: ", contador)
		
		//relatorio mulheres			     
			     escreva ("\nQuantidade de Mulheres: ", qtde_mJ + qtde_mA + qtde_mE)

			     escreva ("\nTotal de Idade de Mulheres Jovens: ", total_ida_mJ)
			     escreva ("\nTotal de Altura de Mulheres Jovens: ", total_alt_mJ)
			     escreva ("\nTotal de Peso de Mulheres Jovens: ", total_peso_mJ)
			     
			     escreva ("\nTotal de Idade de Mulheres Adultas: ", total_ida_mA)
			     escreva ("\nTotal de Altura de Mulheres Adultas: ", total_alt_mA)
			     escreva ("\nTotal de Peso de Mulheres Adultas: ", total_peso_mA)

			     escreva ("\nTotal de Idade de Mulheres Experts: ", total_ida_mE)
			     escreva ("\nTotal de Altura de Mulheres Experts: ", total_alt_mE)
			     escreva ("\nTotal de Peso de Mulheres Experts: ", total_peso_mE)
 
			     escreva ("\nMédia de Idade de Mulheres Jovens: ", media_ida_mJ)
			     escreva ("\nMédia de Altura de Mulheres Jovens: ", media_alt_mJ)
			     escreva ("\nMédia de Peso de Mulheres Jovens: ", media_peso_mJ)
			     
			     escreva ("\nMédia de Idade de Mulheres Adultas: ", media_ida_mA)
			     escreva ("\nMédia de Altura de Mulheres Adultas: ", media_alt_mA)
			     escreva ("\nMédia de Peso de Mulheres Adultas: ", media_peso_mA)

			     escreva ("\nMédia de Idade de Mulheres Experts: ", media_ida_mE)
			     escreva ("\nMédia de Altura de Mulheres Experts: ", media_alt_mE)
			     escreva ("\nMédia de Peso de Mulheres Experts: ", media_peso_mE)
			     
		//relatorio homens
			     escreva ("\nQuantidade de Homens: ", qtde_hJ + qtde_hA + qtde_hE)

			     escreva ("\nTotal de Idade de Homens Jovens: ", total_ida_hJ)
			     escreva ("\nTotal de Altura de Homens Jovens: ", total_alt_hJ)
			     escreva ("\nTotal de Peso de Homens Jovens: ", total_peso_hJ)
			     
			     escreva ("\nTotal de Idade de Homens Adultos: ", total_ida_hA)
			     escreva ("\nTotal de Altura de Homens Adultos: ", total_alt_hA)
			     escreva ("\nTotal de Peso de Homens Adultos: ", total_peso_hA)

			     escreva ("\nTotal de Idade de Homens Experts: ", total_ida_hE)
			     escreva ("\nTotal de Altura de Homens Experts: ", total_alt_hE)
			     escreva ("\nTotal de Peso de Homens Experts: ", total_peso_hE)
			     
			     escreva ("\nMédia de Idade de Homens Jovens: ", media_ida_hJ)
			     escreva ("\nMédia de Altura de Homens Jovens: ", media_alt_hJ)
			     escreva ("\nMédia de Peso de Homens Jovens: ", media_peso_hJ)
			     
			     escreva ("\nMédia de Idade de Homens Adultos: ", media_ida_hA)
			     escreva ("\nMédia de Altura de Homens Adultos: ", media_alt_hA)
			     escreva ("\nMédia de Peso de Homens Adultos: ", media_peso_hA)

			     escreva ("\nMédia de Idade de Homens Experts: ", media_ida_hE)
			     escreva ("\nMédia de Altura de Homens Experts: ", media_alt_hE)
			     escreva ("\nMédia de Peso de Homens Experts: ", media_peso_hE)
		}
		          
		}	
	



/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1720; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */