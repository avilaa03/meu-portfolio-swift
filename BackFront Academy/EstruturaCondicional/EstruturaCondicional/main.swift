//
//  main.swift
//  EstruturaCondicional
//
//  Created by Lucas de Ávila Moreira on 31/10/22.
//

import Foundation

// Situação: só deve entrar na festa maiores de idade (18+)

func validaMaiorDeIdade (idade: Int) -> Bool {
    if (idade >= 18) {
        print("Pode passar")
        return true
    } else {
        print("Não pode passar")
        return false
    }
}

print(validaMaiorDeIdade(idade: 19))
