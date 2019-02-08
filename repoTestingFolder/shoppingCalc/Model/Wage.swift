//
//  Wage.swift
//  shoppingCalc
//
//  Created by Sabri Sönmez on 1/28/19.
//  Copyright © 2019 Sabri Sönmez. All rights reserved.
//

import Foundation
class Wage{
    
    class func getHours(forWage wage:Double, andPrice price:Double)-> Int{
        
        return Int(ceil(price/wage))
        
    }
    
    
    
}
