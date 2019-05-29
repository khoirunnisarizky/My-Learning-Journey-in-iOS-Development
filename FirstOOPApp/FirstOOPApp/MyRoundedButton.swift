//
//  MyRoundedButton.swift
//  FirstOOPApp
//
//  Created by khoirunnisa' rizky noor fatimah on 15/05/19.
//  Copyright © 2019 khoirunnisa' rizky noor fatimah. All rights reserved.
//

import UIKit

class MyRoundedButton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    //untuk viewdidload dari kelas UIButton, untuk mengubah suatu fungsi yang sudah ada gunakan override
    override func awakeFromNib() {
        layer.cornerRadius = 10
        layer.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
    }
}
