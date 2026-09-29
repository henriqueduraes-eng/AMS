programa
{
    funcao inicio()
    {
        real distancia, litros, consumo

        escreva("Digite a distancia percorrida: ")
        leia(distancia)

        escreva("Digite os litros utilizados: ")
        leia(litros)

        consumo = distancia / litros

        escreva("Consumo medio: ", consumo, " km/l")
    }
}