import UIKit

//function to iterate over array
var myNumbers = [1, 2, 3, 4, 5]
// dalam fungsi bisa lebih dari 1 parameter yang dipisahkan dg koma
func printArrayOf(numbers: [Int]) { //fungsi paling dasar tanpa parameter dg ()
    for number in numbers {
        print(number)
    }
}
printArrayOf(numbers: myNumbers)
