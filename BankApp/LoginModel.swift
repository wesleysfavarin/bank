//
//  LoginModel.swift
//  BankApp
//
//  Created by mac on 16/02/19.
//  Copyright © 2019 mac. All rights reserved.
//

import Foundation
class Login: Codable {
    let urlencoded: [Urlencoded]
    
    init(urlencoded: [Urlencoded]) {
        self.urlencoded = urlencoded
    }
}

class Urlencoded: Codable {
    var key, value, type: String
    
    init(key: String, value: String, type: String) {
        self.key = key
        self.value = value
        self.type = type
    }
}

