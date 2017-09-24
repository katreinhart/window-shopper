//
//  Currency.swift
//  window-shopper
//
//  Created by Katherine Reinhart on 9/23/17.
//  Copyright © 2017 reinhart.digital. All rights reserved.
//

import UIKit

@IBDesignable class Currency: UITextField {
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLabel = UILabel(frame: CGRect(x: (frame.size.height - size) / 2, y: (frame.size.height / 2 - size / 2), width: size, height: size))
        
        currencyLabel.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.7829555458)
        currencyLabel.textAlignment = .center
        currencyLabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLabel.layer.cornerRadius = 5.0
        currencyLabel.clipsToBounds = true
        
        let formatter = NumberFormatter()
        formatter.locale = .current
        
        currencyLabel.text = formatter.currencySymbol
        addSubview(currencyLabel)
        
    }
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        customizeView()
        
        
    }
    
    func customizeView () {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        clipsToBounds = true
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)])
            
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}
