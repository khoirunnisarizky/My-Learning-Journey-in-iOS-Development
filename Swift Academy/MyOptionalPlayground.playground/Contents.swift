import UIKit

//Optional Type
var name: String? = "Anis"
print(name!) //tanda seru untuk hanya memanggil apa yg ada di dalam optional (jk dianalogikan optional ini box) -- cara cepat tapi tidak aman why?
//misal
//name = nil
//print(name!) disebut sbg force unwrapping
//gunakan tanda seru ini ketika kita yakin ga mungkin nil,  caranya dg kita declare variabelnya seperti yang di atas

//contoh dg dictionary
var Airport: [String : String] = ["CGK" : "Bandara Soekarno Hatta"]
print(Airport["CGK"]!) //Kenapa gitu? karena dictionary rawan typo
//optional tipe data tidak bisa diberikan operator value-- unwrapp Int? baru bisa ditambahkan Int, idem utk tipe data yg lain
//cara unwrap yg lebih aman menggunakan if
var phoneNumber: String? = "089672182283"
phoneNumber = nil
if let number = phoneNumber {
    print("My phone number \(number)")
} else {
    print("No phone number provided") //ini yg bikin dia lebih aman -- tidak akan terjadi crash karena ada tidaknya nilai ada actionnya
}


