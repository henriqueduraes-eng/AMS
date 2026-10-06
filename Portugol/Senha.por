programa {
  funcao inicio() {
    cadeia senha = ""

    escreva("Digite a senha de acesso: ")
    leia(senha)

    enquanto (senha != "1234")
    {
      escreva("Senha incorreta! Tente novamente: ")
      leia(senha)
    }

    escreva("Acesso permitido!")
  }
}
