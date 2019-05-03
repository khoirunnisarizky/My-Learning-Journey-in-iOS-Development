import UIKit

enum TypeOfWaste {
    case foodWaste, plastic, paper, metal, glass, rubber
}
enum Bin{
    case red, blue, white, grey, cyan, black
}
var whatIDo : TypeOfWaste = .glass
switch whatIDo {
case .foodWaste:
    debugPrint("put in the \(Bin.red) bin.")
case .glass:
    debugPrint("put in the \(Bin.blue) bin.")
case .metal:
    debugPrint("put in the \(Bin.white) bin.")
case .paper:
    debugPrint("put in the \(Bin.grey) bin.")
case .plastic:
    debugPrint("put in the \(Bin.cyan) bin.")
case .rubber:
    debugPrint("put in the \(Bin.black) bin.")
}

//explore beda dr print dan debugPrint
