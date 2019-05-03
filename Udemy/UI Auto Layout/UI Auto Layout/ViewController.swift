//
//  ViewController.swift
//  UI Auto Layout
//
//  Created by khoirunnisa' rizky noor fatimah on 02/05/19.
//  Copyright © 2019 khoirunnisa' rizky noor fatimah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let square = UIView(frame: CGRect(x: 100, y: 100, width: 200, height: 200))
        square.backgroundColor = #colorLiteral(red: 1, green: 0.1857388616, blue: 0.5733950138, alpha: 1)
        self.view.addSubview(square)
        
        let square2 = UIView(frame: CGRect(x: self.view.frame.width / 2 - 50, y: self.view.frame.height / 2 - 50, width: 100, height: 100))
        square2.backgroundColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        self.view.addSubview(square2)
    }


}

