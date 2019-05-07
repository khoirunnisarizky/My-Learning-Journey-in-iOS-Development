//
//  main.swift
//  Classes and Objects
//
//  Created by khoirunnisa' rizky noor fatimah on 05/05/19.
//  Copyright © 2019 khoirunnisa' rizky noor fatimah. All rights reserved.
//

import Foundation
//Make an object from class (blueprint)
let myCar = Car()

let myOtherCar = Car(customerChosenColour: "Red")

/*
 print(myCar.colour)
print(myCar.numberOfSeats)
print(myCar.typeOfCar)

print(myOtherCar.colour)
print(myOtherCar.numberOfSeats)
print(myOtherCar.typeOfCar)
*/

//action of the object, called a function that associated to the specific object so using (dot) after the objectname
//myCar.drive() -- drive capability

let mySelfDrivingCar = SelfDrivingCar()

//mySelfDrivingCar.destination = "1 Hacker away"

mySelfDrivingCar.drive()
//print(mySelfDrivingCar.colour)


