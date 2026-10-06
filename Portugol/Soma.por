programa {
  funcao inicio() {
    inteiro numero
    inteiro soma = 0

    escreva("Digite um número (ou 0 para sair): ")
    leia(numero)

    enquanto (numero != 0)
    {
      soma = soma + numero

      escreva("Digite o próximo número (ou 0 para sair): ")
      leia(numero)
    }
    escreva("\nA soma total dos números digitados é: ", soma)
  }
}
