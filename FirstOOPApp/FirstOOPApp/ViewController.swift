//
//  ViewController.swift
//  FirstOOPApp
//
//  Created by khoirunnisa' rizky noor fatimah on 15/05/19.
//  Copyright © 2019 khoirunnisa' rizky noor fatimah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let myEyeGlasses = EyeGlases(kacaBaru: 2, lensa: "minus", bahanTangkaiFrame: "kayu", warna: "")
//        //myEyeGlasses = Instance and EyeGlasses = object
//        myEyeGlasses.warna = "blue"
//        // Do any additional setup after loading the view.
//
//        print(myEyeGlasses.warna)
//        myEyeGlasses.seeClearly()
        let myEyeGlasses = EyeGlases(lensa: "minus", kaca: 2, bahanTangkaiFrame: "kayu", warna: "blue")
        
        print(myEyeGlasses.lensa)
        
    }


}

