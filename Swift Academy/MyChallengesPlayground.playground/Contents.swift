import UIKit

//Challenge A
print("Apple Academy Cafe")
print("============================")
let cashierName = "Haryanto"
print("Cashier:", cashierName)
print("============================")
let priceOfOrange = 20_000
let priceOfFriedRice = 40_000
print("Es Jeruk XCode    Rp.", priceOfOrange)
print("Nasi Goreng Swift Rp.", priceOfFriedRice)
print("============================")
let total = priceOfFriedRice + priceOfOrange
print("Total             Rp.", total)

//Challenge B
print("Apple Academy Cafe")
print("============================")
print("Cashier:", cashierName)
print("============================")
print("Es Jeruk XCode    Rp.", priceOfOrange)
print("Nasi Goreng Swift Rp.", priceOfFriedRice)
print("============================")
let subtotal = priceOfFriedRice + priceOfOrange
let chargeOfTax = (10/100) * Double(subtotal)
print("Subtotal          Rp.", subtotal)
print("Tax (10%)         Rp. ", Int(chargeOfTax))
print("============================")
let Total = subtotal + Int(chargeOfTax)
print("Total             Rp.", Total)

//Challenge C
print("Apple Academy Cafe")
print("==========================================")
print("Cashier:", cashierName)
print("==========================================")
let priceOfOrange1 = 10000
let priceOfFriedRice1 = 20000
let priceOfPerkedel = 5000
let priceOfTea = 5000
let numberOfOrange1 = 2
let numberOfFriedRice1 = 3
let numberOfPerkedel = 4
let numberOfTea = 1
print("Es Jeruk XCode    ", numberOfOrange1, "x @", priceOfOrange1, "Rp.", numberOfOrange1 * priceOfOrange1)
print("Nasi Goreng Swift ", numberOfFriedRice1, "x @", priceOfFriedRice1, "Rp.", numberOfFriedRice1 * priceOfFriedRice1)
print("Perkedel          ", numberOfPerkedel, "x @ ", priceOfPerkedel, "Rp.", numberOfPerkedel * priceOfPerkedel)
print("Teh Hangat        ", numberOfTea, "x @ ", priceOfTea, "Rp.", numberOfTea * priceOfTea)
print("==========================================")
let subtotal1 = numberOfOrange1 * priceOfOrange1 + numberOfFriedRice1 * priceOfFriedRice1 + numberOfPerkedel * priceOfPerkedel + numberOfTea * priceOfTea
let chargeOfTax1 = (10/100) * Double(subtotal1)
print("Subtotal                       Rp.", subtotal1)
print("Tax (10%)                      Rp. ", Int(chargeOfTax1))
print("==========================================")
let Total1 = subtotal1 + Int(chargeOfTax1)
print("Total                          Rp.", Total1)
