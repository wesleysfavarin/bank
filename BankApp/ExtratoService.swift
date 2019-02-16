//
//  ExtratoService.swift
//  BankApp
//
//  Created by mac on 10/02/19.
//  Copyright © 2019 mac. All rights reserved.
//

import Foundation
import Alamofire
import CodableAlamofire


class ExtratoService{
    private static let basePath = "https://bank-app-test.herokuapp.com/api/statements/"
    class func GetExtract( userId: Int = 153, onComplete:@escaping (Extrato?) -> Void) {
        let url = basePath
        Alamofire.request(url + "\(userId)").responseJSON {(response) in
            guard let data = response.data else{
                onComplete(nil)
                return
            }
            do{
               // print(response)
                let extracData = try? newJSONDecoder().decode(Extrato.self, from: data)
                onComplete(extracData)
                return
            }catch{
                print(error.localizedDescription)
                onComplete(nil)
            }
        }
        
        func newJSONDecoder() -> JSONDecoder {
            let decoder = JSONDecoder()
            if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
                decoder.dateDecodingStrategy = .iso8601
            }
            return decoder
        }
        
        func newJSONEncoder() -> JSONEncoder {
            let encoder = JSONEncoder()
            if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
                encoder.dateEncodingStrategy = .iso8601
            }
            return encoder
        }
    }
    
}
