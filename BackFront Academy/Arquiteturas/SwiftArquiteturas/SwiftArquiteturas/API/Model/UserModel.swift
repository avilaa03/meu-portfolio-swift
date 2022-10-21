//
//  UserModel.swift
//  SwiftArquiteturas
//
//  Created by Lucas de Ávila Moreira on 21/10/22.
//

import Foundation

struct UserModel: Codable {
    let email: String
    let password: String
    
    init() {
        self.email = String()
        self.password = String()
    }
    
    init(email: String, password: String) {
        self.email = email
        self.password = password 
    }
}
