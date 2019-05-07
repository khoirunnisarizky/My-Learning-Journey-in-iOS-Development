//
//  Car.swift
//  Classes and Objects
//
//  Created by khoirunnisa' rizky noor fatimah on 05/05/19.
//  Copyright © 2019 khoirunnisa' rizky noor fatimah. All rights reserved.
//

import Foundation

//Using enumeration
enum CarType {
    case Sedan
    case Coupe
    case Hatchback
}

class Car {
    
//Using two properties
    var colour = "Black"
    var numberOfSeats = 5
    var typeOfCar : CarType = .Coupe

//How to make custom for this object by using initializing of object from class : what should happen when a new object created
// called as designed initialiser
    init() {
    }
    
// we can do the same for custom number Of seats and type Of car using init
    
//add an optional initialiser = convenience initialiser, to be able using the default of an object
    convenience init (customerChosenColour : String) {
    self.init() //mengubah dengan inisialisasi costum
        colour = customerChosenColour
    }
    
// a method of an action to the object
    func drive() {
        print("Car is moving")
    }
}


