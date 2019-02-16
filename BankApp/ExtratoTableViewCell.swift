//
//  ExtratoTableViewCell.swift
//  BankApp
//
//  Created by mac on 10/02/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class ExtratoTableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var lbTransacao: UILabel!
    @IBOutlet weak var lbTipoConta: UILabel!
    @IBOutlet weak var lbData: UILabel!
    @IBOutlet weak var lbValor: UILabel!
    
    
     var extracData: [StatementList] = []
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func prepareExtrac(with itemExtrato: StatementList){
         lbTransacao.text = itemExtrato.title
        lbTipoConta.text = itemExtrato.desc
        lbData.text = itemExtrato.date
        lbValor.text = String("R$ \(itemExtrato.value!)")
        
    }
    
   
}
