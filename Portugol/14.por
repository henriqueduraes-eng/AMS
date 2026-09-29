programa
{
    funcao inicio()
    {
        real preco, litros, total

        escreva("Digite o preco do litro: ")
        leia(preco)

        escreva("Digite a quantidade de litros: ")
        leia(litros)

        total = preco * litros

        escreva("Valor total: R$", total)
    }
}