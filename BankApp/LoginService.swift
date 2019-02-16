//
//  LoginService.swift
//  BankApp
//
//  Created by mac on 10/02/19.
//  Copyright © 2019 mac. All rights reserved.
//

import Foundation
class LoginService {
    private static let basePath = "https://bank-app-test.herokuapp.com/api/login"
    private static let configuration: URLSessionConfiguration = {
        let config = URLSessionConfiguration.default
        config.allowsCellularAccess = false;
        config.httpAdditionalHeaders = ["Content-Type": "application/x-www-form-urlencoded"]
        config.timeoutIntervalForRequest = 30.0
        config.httpMaximumConnectionsPerHost = 5
        return config
    }()
    
    private static let session = URLSession(configuration: configuration)
    
    
    
    class func Login(login: Urlencoded, onComplete:@escaping (Bool)-> Void){
        guard let url = URL(string: basePath) else{
            
            onComplete(false)
            return
        }
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        guard let json = try? JSONEncoder().encode(login) else {
            onComplete(false)
            return
        }
        request.httpBody = json
        let dataTask = session.dataTask(with: request) { (data, response, error) in
            if error == nil{
                print(response)
                guard let response = response as? HTTPURLResponse, response.statusCode == 200, let data = data else{
                    onComplete(false)
                    return
                }
                print(response)
                onComplete(true)
            } else{
                print(response)
                onComplete(false)
            }
            
        }
    }
}
