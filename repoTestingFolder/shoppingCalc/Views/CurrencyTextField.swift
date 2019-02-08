//
//  CurrencyTextField.swift
//  shoppingCalc
//
//  Created by Sabri Sönmez on 1/24/19.
//  Copyright © 2019 Sabri Sönmez. All rights reserved.
//

import UIKit

@IBDesignable

class CurrencyTextField: UITextField {

    
    override func draw(_ rect: CGRect) {
        
        let size : CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size/2, width: size, height: size))
        
        currencyLbl.backgroundColor = #colorLiteral(red: 0.7251744924, green: 0.7251744924, blue: 0.7251744924, alpha: 0.370906464)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.layer.cornerRadius = 5
        currencyLbl.clipsToBounds = true
        
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    
    }
    
    
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView(){
        
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2475385274)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        if placeholder == nil{
            
            placeholder = " "
            
        }
        
        let place = NSAttributedString(string: placeholder!, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0) ])
        attributedPlaceholder = place
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
    }

}
