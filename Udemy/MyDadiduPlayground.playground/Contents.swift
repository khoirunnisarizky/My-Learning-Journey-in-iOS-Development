import UIKit

func fibonaci(until n:  Int) {
    var fibonaciFirstNumber = 1
    var fibonaciSecondNumber = 1
    var sequenceOfFibonaci : String = ""
    sequenceOfFibonaci += "\(fibonaciFirstNumber) "
    sequenceOfFibonaci += " \(fibonaciSecondNumber) "
    for _ in 3...n {
        let fibonaciNextNumber = fibonaciFirstNumber + fibonaciSecondNumber
        sequenceOfFibonaci += " \(fibonaciNextNumber) "
        fibonaciFirstNumber = fibonaciSecondNumber
        fibonaciSecondNumber = fibonaciNextNumber
    }
    print(sequenceOfFibonaci)
}

fibonaci(until: 5)
fibonaci(until: 6)
