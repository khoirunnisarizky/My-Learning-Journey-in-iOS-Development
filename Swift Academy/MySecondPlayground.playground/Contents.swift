import UIKit
//Operators
//Hands On A

let heartRate1 = 70
let heartRate2 = 80
let heartRate3 = 90

let addedHR = heartRate1 + heartRate2 + heartRate3
let averageHR = addedHR / 3
print(averageHR)

let heartRate1D = Double(heartRate1)
let heartRate2D = Double(heartRate2)
let heartRate3D = Double(heartRate3)
let addedHRD = heartRate1D + heartRate2D + heartRate3D
let averageHRD = addedHRD / 3
print(averageHRD)

let steps: Double = 3457
let goal: Double = 10000
let percentOfGoal = (steps / goal) * 100
print(percentOfGoal, "% of total steps")

//Hands on B using type casting command assignment
var beginValue = 10
beginValue += 5
print(beginValue)

beginValue *= 2
print(beginValue)

var piggyBank = 0
piggyBank += 10
print(piggyBank)
piggyBank += 20
print(piggyBank)
piggyBank -= piggyBank/2
print(piggyBank)
piggyBank *= 3
print(piggyBank)
piggyBank -= 3
print("last value = ", piggyBank)

//Hands On C
let x = 10
let y = 3.2
let multipliedAsDoubles = Double(x) * y
let multipliedAsIntegers = x * Int(y)
print("Doubles Result = ", multipliedAsDoubles)
print("Integers Result = ", multipliedAsIntegers)

//Hands On D
let steps1 : Int =  3457
let goal1 : Int = 10000
var percentOfGoal1 : Double
percentOfGoal1 = Double(steps1) / Double(goal1) * 100
print(percentOfGoal1)



