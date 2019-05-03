import UIKit

func power(of number1: Int, by number2: Int)-> Int {
    var result = 1
    for _ in 1 < number2  {
        result = result * number2
    }
    return result
}

power(of: 5, by: 4)
