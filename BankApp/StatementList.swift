//
//  StatementList.swift
//  BankApp
//
//  Created by mac on 10/02/19.
//  Copyright © 2019 mac. All rights reserved.
//

import Foundation
class StatementList: Codable {
    let title, desc, date: String?
    let value: Double?
    
    init(title: String?, desc: String?, date: String?, value: Double?) {
        self.title = title
        self.desc = desc
        self.date = date
        self.value = value
    }
}
