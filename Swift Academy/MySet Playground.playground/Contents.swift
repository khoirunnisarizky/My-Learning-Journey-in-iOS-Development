import UIKit


//Set
var MyFollowers: Set<String> = ["😀", "😅", "🥰"]//set of string, Kalo kosong ditulis '= []'
var HisFollowers: Set<String> = ["🥰", "😅"]

//Using insert to put new value into the set
MyFollowers.insert("🤩")
HisFollowers.insert("🤓")
print("My Followers: \(MyFollowers)")
print("His Followers: \(HisFollowers)")
print("Both: \(MyFollowers.intersection(HisFollowers))")
//bisa pake looping conditional
//explore Higher Order Function
