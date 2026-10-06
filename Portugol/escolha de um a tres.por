programa {
  funcao inicio() {
    inteiro opcao = 0

    enquanto (opcao != 3)
    {
      escreva("\n--- MENU PRINCIPAL ---")
      escreva("\n1) Ver Saldo")
      escreva("\n2) Depositar")
      escreva("\n3) Sair")
      escreva("\nEscolha uma opção: ")
      leia(opcao)

      se (opcao == 1)
      {
        escreva("\nSeu saldo atual é R$ 150,00\n")
      }
      senao se (opcao == 2)
      {
        escreva("\ndepósito realizado com sucesso!\n")
      }
      senao se (opcao != 3)
      {
        escreva("\nOpção inválida! Tente novamente.\n")
      }
    }
  }
}
