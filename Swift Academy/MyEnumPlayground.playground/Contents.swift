import UIKit

//Our defined enum
enum ArahMataAngin {
    case utara
    case selatan
    case timur
    case barat
}
//enum ga dinamis karena udh kita tentuin jadi ga bisa ditambahin
var myDirection : ArahMataAngin = .barat //cara lama ditulisnya ArahMataAngin.barat
if myDirection == .selatan {
print("I am going to south.")
} else {
    print("I am in a wrong direction.")
}

//can use Switch
switch myDirection {
case .barat:
    print("I am going to west.")
case .selatan:
    print("I am going to south.")
case .timur:
    print("I am going to east.")
case .utara:
    print("I am going to north.")
}
//ga perlu pake default karena tipedatanya menggunakan enum yg sudah pasti jadi lebih aman
//kategori pilihan pakenya enum switch, pun juga pada netflix utk safe code, atau di status public; only me; dll

