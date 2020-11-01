//
//  Wage.swift
//  window-shopper
//
//  Created by Yann Debain on 26/12/2017.
//  Copyright © 2017 Debain Yann. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price/wage))
    }
}
