//
//  CurrencyTextField.swift
//  window-shopper
//
//  Created by Yann Debain on 25/12/2017.
//  Copyright © 2017 Debain Yann. All rights reserved.
//

import UIKit

@IBDesignable

class CurrencyTextField: UITextField {

    override func draw(_ rect: CGRect) {

        let currencyLbl = UILabel(frame: CGRect(x: 0, y: 0, width: frame.size.height, height: frame.size.height))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2392156869, green: 0.495880266, blue: 0.9686274529, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        
        currencyLbl.text = formatter.currencySymbol
        
        addSubview(currencyLbl)
    }
    
    override func prepareForInterfaceBuilder() {
        custumizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        custumizeView()
    }
    
    func custumizeView() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        
        clipsToBounds = true
    }
}
