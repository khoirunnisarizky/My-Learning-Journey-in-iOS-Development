import UIKit
//Array
let names: [String] = ["Khoirunnisa'", "Rizky", "Noor", "Fatimah"]
print(names[1])
var album: [String] = ["Sucker Punch", "Mine Right Now", "Basic", "Strangers", "Do not Feel Like Crying", "Level Up", "Sight Of You"]
//menambahkan tipe data baru menggunakan append
album.append("Business Dinners")
print(album)
print(album[5])
//album.remove(at: 3)
var keluarga: [[String]] = [["Adi","Aji"],["Baba","Bibi"]]
print(keluarga[0][0])
//kalo bingung how to write in a function klik option
print(album)
print("  1.", album[0]) //bisa pake string literal : ada variabel di dalam string
print("  2. \(album[1])")
print("  3. \(album[2])")
print("  4. \(album[3])")
print("⭐️5. \(album[4])")
print("  6. \(album[5])")

//ketika ada yang sama: dibuat efektif dg looping
for song in album {
    print(song)
}

//dictionary


