//
//  Extrato.swift
//  BankApp
//
//  Created by mac on 10/02/19.
//  Copyright © 2019 mac. All rights reserved.
//

// To parse the JSON, add this file to your project and do:
//
//   let extrato = try? newJSONDecoder().decode(Extrato.self, from: jsonData)
//
// To read values from URLs:
//
//   let task = URLSession.shared.extratoTask(with: url) { extrato, response, error in
//     if let extrato = extrato {
//       ...
//     }
//   }
//   task.resume()

import Foundation

class Extrato: Codable {
    let statementList: [StatementList]?
    let error: Error?
    
    init(statementList: [StatementList]?, error: Error?) {
        self.statementList = statementList
        self.error = error
    }
}

class Error: Codable {
    
    init() {
    }
}



