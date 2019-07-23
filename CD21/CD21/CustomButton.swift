//
//  CustomButton.swift
//  CD21
//
//  Created by khoirunnisa' rizky noor fatimah on 03/07/19.
//  Copyright © 2019 khoirunnisa' rizky noor fatimah. All rights reserved.
//

import UIKit

class CustomButton: UIButton {

    override func awakeFromNib() {
        layer.borderColor = #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)
        layer.cornerRadius = 5
        layer.borderWidth = 2
        layer.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        self.tintColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
