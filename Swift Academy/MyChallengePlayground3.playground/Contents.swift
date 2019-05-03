import UIKit
//Fizz Buzz
var number : Int = 1
// for i in 1...100
for _ in 1 ..< 101 {
    if (number%3 == 0 && number%5 == 0) {
    print("Fizz Buzz")
    } else if number%5 == 0 {
        print("Buzz")
    } else if number%3 == 0 {
        print("Fizz")
    } else {
        print(number)
    }
    number += 1
}

//Multiplication Table
for firstNumber in 1...10 {
    for secondNumber in 1...10 {
    print(firstNumber,"x", secondNumber, "=", firstNumber*secondNumber)
}
}

//Create a algorithm to check are the Words palindrome or not
//Kasur ini rusak -> true
//Ibu ratna antar ibu -> true
//let sentence : String = "kasur ini rusak"
//for place in sentence {
//    var newPlace = place
//
//}

//let string = "Jesse"
//print(String(string.reversed()))
let numberChecked = 29
var numberCompared = 5
if numberChecked < 38 {
    print(numberChecked)
} else {
    for _ in 1...(numberChecked/5 + 1) {
        if numberCompared<numberChecked {
            numberCompared += 5
            } else {
                if numberCompared - numberChecked < 3 {
                    print(numberCompared)
                    } else {
                        print(numberChecked)
                        }
                }
            }
}

//atau cara lain
if numberChecked > 37 {
    if numberChecked % 5 > 2 {
        print(numberChecked+(numberChecked%5-1))
        } else {
            print(numberChecked)
    }
} else {
    print(numberChecked)
}
