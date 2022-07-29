programa
{
	//SISTEMA DE COMPRAS, SEJA POR DINHEIRO, PIX, CRÉDITO OU DÉBITO.

	//INCLUSÃO DA BIBLIOTECA MATEMÁTICA PARA POSTERIORMENTE SER USADO O MÉTODO DE ARREDONDAMENTO DE CASAS DECIMAIS.
	inclua biblioteca Matematica-->mat
	
	//INCLUSÃO DA BIBLIOTECA UTIL PARA QUE A MENSAGEM FINAL SEJA EXIBIDA POR 5 SEGUNDOS E POSTERIORMENTE APAGADA COM A FUNÇÃO LIMPAR.
	inclua biblioteca Util-->ut
	
	funcao inicio()
	{
		inteiro parcelamento
		inteiro contador = 5
		real preco_produto
		real desconto
		real preco_com_desconto
		real preco_dividido1x
		real preco_dividido2x
		real preco_dividido3x
		real preco_com_taxa
		real taxa_debito
		real pag_cliente
		real troco
		caracter escolha_cliente

		escreva("--------------------BEM-VINDO(A) A NOSSA LIQUIDAÇÃO!--------------------")
		escreva("\nInforme o total: R$ ")
		leia(preco_produto)
		escreva("\nMétodo de pagamento: (N) para Dinheiro | (P) para Pix | (C) para Crédito | (D) para Débito\n")
		leia(escolha_cliente)
		
		//O PROGRAMA SELECIONA A OPÇÃO APRESENTADA AO USUÁRIO E AGE DE ACORDO COM AS CONDIÇÕES IMPOSTAS ABAIXO.
		escolha(escolha_cliente)
		{

			

			
		//OPÇÃO DE PAGAMENTO VIA DINHEIRO:
		caso 'N':

		escreva("\nValor pago pelo cliente: R$ ")
		leia(pag_cliente)

		//CÁLCULO PARA OBTER O TROCO CASO O CLIENTE DÊ UM VALOR MAIOR QUE O TOTAL.
		troco = pag_cliente - preco_produto

		//CONDIÇÃO QUE, CASO O TOTAL DE PRODUTOS SEJA MAIOR OU IGUAL A 20 REAIS, HAJA UM DESCONTO DE 20%.
		se (preco_produto >= 20)
		{

			//PARA COMPRAS A VISTA, SEJA POR DINHEIRO OU PIX, APLICA-SE UM DESCONTO DE 20%.
			desconto = preco_produto * 0.20
			preco_com_desconto = preco_produto - desconto

			//CONCATENAÇÃO.
			escreva("\nPreço original: R$ " + preco_produto)
			
			//BIBLIOTECA MATEMÁTICA SENDO USADA PARA ARREDONDAMENTO DE DUAS CASAS DECIMAIS APÓS A VÍRGULA.
			escreva("\nDesconto: R$ " + mat.arredondar(desconto, 2))
			escreva("\nTotal: R$ " + mat.arredondar(preco_com_desconto, 2))
			escreva("\nTroco: R$ " + mat.arredondar(troco, 2))
			
			escreva("\n----------OBRIGADO POR COMPRAR EM NOSSA LOJA. VOLTE SEMPRE!----------")

			//BIBLIOTECA UTIL PARA QUE SE EXIBA A MENSAGEM ACIMA POR 10 SEGUNDOS.
			ut.aguarde(10000)

			//APÓS A EXIBIÇÃO DA MENSAGEM POR 5 SEGUNDOS, A TELA SERÁ LIMPADA.
			limpa()
		}

		senao
		{
			//CASO O TOTAL SEJA ABAIXO DE R$ 20,00, NÃO SE APLICA DESCONTO.
			escreva("Descontos somente em compras a partir de R$ 20,00")
			escreva("\nTotal: R$ " + preco_produto)
			escreva("\nOBRIGADO POR COMPRAR EM NOSSA LOJA. VOLTE SEMPRE!")

			//BIBLIOTECA UTIL PARA QUE SE EXIBA A MENSAGEM ACIMA POR 10 SEGUNDOS.
			ut.aguarde(10000)

			//APÓS A EXIBIÇÃO DA MENSAGEM POR 5 SEGUNDOS, A TELA SERÁ LIMPADA.
			limpa()
		}
		pare




		//OPÇÃO DE PAGAMENTO VIA PIX:
		caso 'P':

		//EXIBIÇÃO AO USUÁRIO DA CHAVE PIX E O TITULAR DA CONTA QUE RECEBERÁ O VALOR.
		escreva("\nChave pix: (32) 9000-8900 | Nome: Gabriel Dutra de Oliveira\n ")
		
		//CONDIÇÃO QUE, CASO O TOTAL DE PRODUTOS SEJA MAIOR OU IGUAL A 20 REAIS, HAJA UM DESCONTO DE 20%.
		se (preco_produto >= 20)
		{

			//PARA COMPRAS A VISTA, SEJA POR DINHEIRO OU PIX, APLICA-SE UM DESCONTO DE 20%.
			desconto = preco_produto * 0.20
			preco_com_desconto = preco_produto - desconto

			//CONCATENAÇÃO.
			escreva("\nPreço original: R$ " + preco_produto)
			
			//BIBLIOTECA MATEMÁTICA SENDO USADA PARA ARREDONDAMENTO DE DUAS CASAS DECIMAIS APÓS A VÍRGULA.
			escreva("\nDesconto: R$ " + mat.arredondar(desconto, 2), "\n")
			escreva("\nTotal: R$ " + mat.arredondar(preco_com_desconto, 2), "\n")
			
			escreva("\nOBRIGADO POR COMPRAR EM NOSSA LOJA. VOLTE SEMPRE!")

			//BIBLIOTECA UTIL PARA QUE SE EXIBA A MENSAGEM ACIMA POR 10 SEGUNDOS.
			ut.aguarde(10000)

			//APÓS A EXIBIÇÃO DA MENSAGEM POR 5 SEGUNDOS, A TELA SERÁ LIMPADA.
			limpa()
		}

		senao
		{
			//CASO O TOTAL SEJA ABAIXO DE R$ 20,00, NÃO SE APLICA DESCONTO.
			escreva("Descontos somente em compras a partir de R$ 20,00")
			escreva("\nTotal: R$ " + preco_produto)
			escreva("\nOBRIGADO POR COMPRAR EM NOSSA LOJA. VOLTE SEMPRE!")

			//BIBLIOTECA UTIL PARA QUE SE EXIBA A MENSAGEM ACIMA POR 10 SEGUNDOS.
			ut.aguarde(10000)

			//APÓS A EXIBIÇÃO DA MENSAGEM POR 5 SEGUNDOS, A TELA SERÁ LIMPADA.
			limpa()
		}
		pare




		//OPÇÃO DE PAGAMENTO VIA CARTÃO DE CRÉDITO:
		caso 'C':
		
			//CONDIÇÃO QUE, CASO O TOTAL DE PRODUTOS SEJA MAIOR OU IGUAL A 30 REAIS, PODERÁ SER DIVIDIDO EM ATÉ 3 VEZES.
			se (preco_produto >=30)
			{
			escreva("\nSelecione em quantas vezes será dividido:")

			
			//3 VARIÁVEIS FORAM CRIADAS PARA EFETUAR A DIVISÃO DO CARTÃO DE CRÉDITO
			preco_dividido1x = (preco_produto / 1)
			preco_dividido2x = (preco_produto / 2)
			preco_dividido3x = (preco_produto / 3)

			//BIBLIOTECA MATEMÁTICA SENDO USADA PARA O ARREDONDAMENTO DE DUAS CASAS DECIMAIS APÓS A VÍRGULA.
			escreva("\n (1) para 1x -- R$ " + mat.arredondar(preco_dividido1x, 2))
			escreva("\n (2) para 2X -- R$ " + mat.arredondar(preco_dividido2x, 2))
			escreva("\n (3) para 3X -- R$ " + mat.arredondar(preco_dividido3x, 2), "\n")
			leia(parcelamento)
			
				//OUTRA CONDIÇÃO PARA QUE, SE O USUÁRIO DIGITAR O NÚMERO 1 OU O NÚMERO 2 OU O NÚMERO 3, POSSA SER VALIDADA A OPERAÇÃO.
				se (parcelamento == 1 ou parcelamento == 2 ou parcelamento == 3)
			
				{

					//COMANDO FAÇA ENQUANTO INCREMENTADO PARA QUE, AO USUÁRIO INSERIR O CARTÃO, HAJA UM CARREGAMENTO DE 5 SEGUNDOS NA MAQUININHA DE FORMA A CONSULTAR O SALDO E LIBERAR A COMPRA.
					faca 
					{

						escreva("Aguarde para ser aprovada a sua compra... " + contador)

			 			contador = contador - 1
			 			ut.aguarde(1000)
			 			limpa()
			 
					} enquanto (contador > 0)
						
						escreva("\n-----------Compra efetuada com sucesso!--------------")
						escreva("\nOBRIGADO POR COMPRAR EM NOSSA LOJA. VOLTE SEMPRE!")

						//BIBLIOTECA UTIL PARA QUE SE EXIBA A MENSAGEM ACIMA POR 5 SEGUNDOS.
						ut.aguarde(10000)

						//APÓS A EXIBIÇÃO DA MENSAGEM POR 10 SEGUNDOS, A TELA SERÁ LIMPADA.
						limpa()
						pare	
				
				}
				

				senao
				{
					//SE ELE DIGITAR OUTRA COISA ALÉM DE 1 OU 2 OU 3, EXIBIR MENSAGEM DE OPÇÃO INVÁLIDA.
					escreva("Opção inválida! Selecione (1) para dividir em 1x | (2) para dividir em 2x | (3) para dividir em 3x. ")
				pare
				
				}
			
			}
		

			senao
			{
				//EXIBIR MENSAGEM DE OPÇÃO INVÁLIDA CASO O USUÁRIO TENTE PASSAR UM VALOR PARA DIVIDIR MENOR OU IGUAL A 29.
				escreva("Opção inválida! Vendas parceladas no cartão somente a partir de R$30,00.")
			pare
			}

			
		

		//OPÇÃO DE PAGAMENTO VIA CARTÃO DE DÉBITO:
		caso 'D':

			//PARA PAGAMENTOS VIA DÉBITO, ACRESCENTA-SE UMA TAXA DE 5%.
			taxa_debito = preco_produto * 0.05
			preco_com_taxa = preco_produto + taxa_debito

			//BIBLIOTECA MATEMÁTICA SENDO USADA PARA O ARREDONDAMENTO DE DUAS CASAS DECIMAIS APÓS A VÍRGULA.
			escreva("\nAcréscimo de R$ " + mat.arredondar(taxa_debito, 2))
			escreva("\nTotal: R$ " + mat.arredondar(preco_com_taxa, 2))

			//BIBLIOTECA UTIL PARA QUE SE EXIBA A MENSAGEM ACIMA POR 5 SEGUNDOS.
			ut.aguarde(5000)

				//COMANDO FAÇA ENQUANTO INCREMENTADO PARA QUE, AO USUÁRIO INSERIR O CARTÃO, HAJA UM CARREGAMENTO DE 5 SEGUNDOS NA MAQUININHA DE FORMA A CONSULTAR O SALDO E LIBERAR A COMPRA.
				faca 
				{

					escreva("\nAguarde para que sua compra seja aprovada... " + contador)

			 		contador = contador - 1
			 		ut.aguarde(1000)
			 		limpa()
			 
				} enquanto (contador > 0)

					escreva("\n-----------Compra efetuada com sucesso!--------------")
					escreva("\nOBRIGADO POR COMPRAR EM NOSSA LOJA. VOLTE SEMPRE!")

					//BIBLIOTECA UTIL PARA QUE SE EXIBA A MENSAGEM ACIMA POR 10 SEGUNDOS.
					ut.aguarde(10000)

					//APÓS A EXIBIÇÃO DA MENSAGEM POR 5 SEGUNDOS, A TELA SERÁ LIMPADA.
					limpa()
					pare



		//CASO O USUÁRIO DIGITE QUALQUER COISA QUE NÃO SEJA AS OPÇÕES: (N) PARA DINHEIRO OU (P) PARA PIX OU (C) PARA CRÉDITO OU (D) PARA DÉBITO, O PROGRAMA EXIBE UM ERRO.
		caso contrario:
			escreva("\nErro. Opção Inválida!")
			escreva("\nSelecione um método de pagamento: (N) para Dinheiro | (P) para Pix | (C) para Crédito | (D) para Débito")
			ut.aguarde(5000)
			limpa()
					
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2087; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {contador, 14, 10, 8}-{escolha_cliente, 25, 11, 15};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */