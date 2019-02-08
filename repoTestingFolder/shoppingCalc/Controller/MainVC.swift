//
//  ViewController.swift
//  shoppingCalc
//
//  Created by Sabri Sönmez on 1/24/19.
//  Copyright © 2019 Sabri Sönmez. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var wageTxt: CurrencyTextField!
    @IBOutlet weak var priceTxt: CurrencyTextField!
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hourslbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
        resultLbl.isHidden = true
        hourslbl.isHidden = true
        
    }

    @IBAction func clearCalculatorPressed(_ sender: Any) {
    
        resultLbl.isHidden = true
        hourslbl.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
        
    }
    
    @objc func calculate (){
        
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text{
            
            if let wage = Double(wageTxt), let price = Double(priceTxt){

                view.endEditing(true)
                resultLbl.isHidden = false
                hourslbl.isHidden = false
                resultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
                
            }
        
        }

    }
    
    
}

