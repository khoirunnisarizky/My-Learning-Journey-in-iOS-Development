import UIKit

var album: [String] = ["Sucker Punch", "Mine Right Now", "Basic", "Strangers", "Do not Feel Like Crying", "Level Up", "Sight Of You"]
var index = 1
for song in album {
    if index == 5 {
        print("⭐️\(index). \(song)")
    } else {
        print("  \(index). \(song)")
    }
   index += 1
}

var filmsCategoryLists: [String:[String]] = [:]

filmsCategoryLists["Available"] = ["Film1", "Film2", "Film3"]
filmsCategoryLists["Action"] = ["Act1", "Act2", "Act3"]
filmsCategoryLists["Anime"] = ["Anime1", "Anime2", "Anime3"]
filmsCategoryLists["Award Winning"] = ["AW1", "AW2"]

//Nulis daftar film
//awalnya
for genres in filmsCategoryLists {
    print(genres)
}
//akhirnya setelah dibedah
for genre in filmsCategoryLists {
    print(genre.key)
    for film in genre.value {
        print("- \(film)")
    }
    print("\n") //spasi sekali
}
//dictionary ga bisa dipanggil seperti array karena unordered, digunakan untuk mengakses data lebih cepat
//array menampilkan data yang memiliki urutan
//manggil 1 gunakan ! karena optional
print(filmsCategoryLists["Action"]![1])
