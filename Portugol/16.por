programa
{
    funcao inicio()
    {
        real compra, pagamento, troco

        escreva("Digite o valor da compra: ")
        leia(compra)

        escreva("Digite o valor pago: ")
        leia(pagamento)

        troco = pagamento - compra

        escreva("Valor do troco: R$", troco)
    }
}