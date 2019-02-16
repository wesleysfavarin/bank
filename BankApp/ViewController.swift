//
//  ViewController.swift
//  BankApp
//
//  Created by mac on 10/02/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tfEMAILCPF: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    
    var login: Urlencoded!
    var result: Bool?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func login(_ sender: Any) {
        
        if tfEMAILCPF.text == "" && tfPassword.text == "" {
            return
        } else {
            
            
           var log = Urlencoded.init(key: tfEMAILCPF.text!, value: tfPassword.text!, type: "text")
            LoginService.Login(login: log) { (sucess) in
               if sucess { 
                   self.result = sucess
                }
            }
        }
        
    }
}

