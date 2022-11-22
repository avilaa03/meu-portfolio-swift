//
//  main.swift
//  ArrayEDicionario
//
//  Created by Lucas de Ávila Moreira on 01/11/22.
//

import Foundation

//MARK: Array

//O que é um Array?
//Uma lista
//Index -> Posição de um elemento na lista
//Ordenado -> Suas posições NÃO SÃO ALTERADAS

var diasDaSemana: [String] = ["Segunda-Feira", "Terça-Feira", "Quarta-Feira", "Quinta-feira", "Sexta-feira"]

var contatos: [Int] = [190, 11970734429, 11938120320]

//Através do índice, ele retorna o respectivo valor
//Exemplo:
//print(diasDaSemana[2])
//
//Count informará a quantidade de itens dentro da lista
//print(contatos.count)
//
//isEmpty (Indica se está vazio ou não, retornando bool (true or false))
//print(diasDaSemana.isEmpty)

//Utilizando .enumerated conseguimos o Index (Posição) e o Value (Valor) de cada item no Array.

for (index, value) in diasDaSemana.enumerated() {
    if value == "Sexta-feira" {
//        print("chegoou")
        diasDaSemana.remove(at: index)
    }
}

//print(diasDaSemana)

//Adicionar valor ao array

diasDaSemana.append("Sábado")
//print(diasDaSemana)



//MARK: Dicionário

//A diferença é que o Array trabalha com INDEX e VALUE, o Dicionário trabalha com CHAVE/KEY e VALUE
//primeiro elemento: CHAVE/KEY
//segundo elemento: VALUE(VALOR)

//Principais caracteristicas do Dicionário
//é feito dentro de colchetes com as propriedades separadas por vírgulas: Exemplo:
// [1:"Nota baixa"]
//Cada valor tem a sua própria chave
//Permite valores repetidos, mas não permite chaves repetidas
//Diferente do Array, dicionário não é ordenado, pois para ele não há necessidade, sendo que é realizado sua busca dos seus valores através de sua chave e não por sua posição.

var nota: [Int : String] = [2: "Nota baixa", 3: "Nota média", 4: "Nota alta", 1: "Nota muito baixa"]

//Como acessar o valor de uma chave específica
//print(nota[4] ?? "Erro 404: Nota não encontrada")

//Utilizar .updateValue para atualizar o valor de uma chave existente, ou criar um novo elemento.

nota.updateValue("Nota teste", forKey: 10)

print(nota)

//nota.removeValue(forKey: 10)


for valueNota in nota {
    if valueNota.value == "Nota teste" {
        nota.removeValue(forKey: valueNota.key)
    }
}

print(nota)
