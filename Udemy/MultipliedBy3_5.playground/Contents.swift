import UIKit

func multipliedNumber (below n: Int) {
    var sequenceOfMultipliedNumber = 0
    for number in 1 ..< n {
        if (number%3 == 0 || number%5 == 0) {
            sequenceOfMultipliedNumber += number
        } else {
            sequenceOfMultipliedNumber += 0
        }
    }
    print(sequenceOfMultipliedNumber)
}

multipliedNumber(below: 10)
multipliedNumber(below: 15)
multipliedNumber(below: 1000)
