//Validação de CPF
programa
{
	inclua biblioteca Texto --> tx
	inclua biblioteca Tipos --> tp
		
	funcao inicio()
	{
		cadeia cpf
		inteiro tamanho
		inteiro cpf1[10]
		inteiro cpf2[11]
		inteiro mult1[]={10,9,8,7,6,5,4,3,2}
		inteiro mult2[]={11,10,9,8,7,6,5,4,3,2}
		inteiro soma = 0
		inteiro resto
		inteiro dv1, dv2
		
			
			escreva("Digite seu CPF (Apenas números): ")
			leia(cpf)
			
			// Obtém o número de caracteres armazenados na variável

			tamanho = inteiro tx.numero_caracteres(cpf)

			se (tamanho > 11 ou tamanho < 11) {
				escreva("\nO CPF informado não possui a quantidade de dígitos correta\n\nDigite novamente")
				leia(cpf)
			} senao se (cpf == "11111111111" 
				ou cpf == "22222222222" 
				ou cpf == "33333333333" 
				ou cpf == "44444444444" 
				ou cpf == "55555555555" 
				ou cpf == "66666666666" 
				ou cpf == "77777777777" 
				ou cpf == "88888888888"
				ou cpf == "99999999999"
				ou cpf == "00000000000"){
					
				escreva("\nO CPF informado é reservado\n\nDigite novamente\n\n")
				cpf = tx.substituir(cpf,"","")				
				leia(cpf)

			} 
			
				caracter pos0 = tx.obter_caracter(cpf,0)
				caracter pos1 = tx.obter_caracter(cpf,1)
				caracter pos2 = tx.obter_caracter(cpf,2)
				caracter pos3 = tx.obter_caracter(cpf,3)
				caracter pos4 = tx.obter_caracter(cpf,4)
				caracter pos5 = tx.obter_caracter(cpf,5)
				caracter pos6 = tx.obter_caracter(cpf,6)
				caracter pos7 = tx.obter_caracter(cpf,7)
				caracter pos8 = tx.obter_caracter(cpf,8)
				caracter pos9 = tx.obter_caracter(cpf,9)
				caracter pos10 = tx.obter_caracter(cpf,10)

				inteiro cpf_validacao[]={
					tp.caracter_para_inteiro(pos0),
					tp.caracter_para_inteiro(pos1),
					tp.caracter_para_inteiro(pos2),
					tp.caracter_para_inteiro(pos3),
					tp.caracter_para_inteiro(pos4),
					tp.caracter_para_inteiro(pos5),
					tp.caracter_para_inteiro(pos6),
					tp.caracter_para_inteiro(pos7),
					tp.caracter_para_inteiro(pos8),
					tp.caracter_para_inteiro(pos9),
					tp.caracter_para_inteiro(pos10)}

				para(inteiro i = 0; i < 9; i++){
				soma+=(cpf_validacao[i] * mult1[i])
				}
				resto = soma % 11
				dv1 = 11 - resto

					se(dv1 > 9){
					dv1 = 0
					}
		
				para(inteiro i = 0; i < 9; i++){
				cpf1[i] = cpf_validacao[i]
				}
				cpf1[9] = dv1
				soma = 0
		
				para(inteiro i = 0; i < 10; i++){
				soma+=(cpf1[i] * mult2[i])
				}
				resto = soma % 11
				dv2 = 11 - resto

					se(dv2 > 9){
					dv2 = 0
					}
		
				para(inteiro i = 0; i < 10; i++){
				cpf2[i] = cpf1[i]
				}
				cpf2[10] = dv2


				
					se (dv1 == cpf_validacao[9] e dv2 == cpf_validacao[10]){
					escreva("\nO CPF informado é válido")
					}
					senao {
					escreva("\nO CPF informado não é válido.")
					}



					
	}
				

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2138; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
