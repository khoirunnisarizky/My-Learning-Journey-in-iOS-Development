//
//  SelfDrivingCar.swift
//  Classes and Objects
//
//  Created by khoirunnisa' rizky noor fatimah on 06/05/19.
//  Copyright © 2019 khoirunnisa' rizky noor fatimah. All rights reserved.
//

import Foundation
//class inheritance to make a self-driving car by making new class = subclass of a class (selfdrivingcar subclass dr kelas Car sehingga fungsi dalam Car berlaku pada subkelasnya
class SelfDrivingCar : Car {
    
    var destination : String? //this could a nil value
    
    override func drive() { //inheritance method
        super.drive() // untuk menambahkan aksi
        //optional binding (safely) - cek nil atau tidaknya untuk mengganti if destination != nil
        if let userSetDestination = destination {
            
        print("driving towards " + userSetDestination) //unwrapped using exclamation mark ?? atau ! = force unwrapping  - definitely not a nil atau gunakan optional binding -- safer
        
        }
    }
}
