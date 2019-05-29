//
//  myEntity.swift
//  FirstOOPApp
//
//  Created by khoirunnisa' rizky noor fatimah on 15/05/19.
//  Copyright © 2019 khoirunnisa' rizky noor fatimah. All rights reserved.
//

import Foundation

class EyeGlases : Optics { //class dimulai dg Uppercase
    
    var lensa : String
    
    init(lensa: String, kaca : Int, bahanTangkaiFrame : String, warna : String) {
        self.lensa = lensa
        super.init(newKaca: kaca, newBahanTangkaiFrame: bahanTangkaiFrame, newWarna: warna)
        
    }
    
    
    func seeClearly() {
        
        print("Waaa! What a beautiful view!")
        
    }
    
    enum CompassPoint {
        case north
        case south
        case east
        case west
    }
    
}
