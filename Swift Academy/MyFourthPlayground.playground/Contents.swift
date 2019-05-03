import UIKit
//Hands on A1
//boolean can' be a constant using 'let'?
let isAnyFish = true
let isAnyPizza = false
let isAnyVegetarian = true
if (isAnyFish || isAnyPizza) {
   if isAnyVegetarian {
    print("Let's Go!")
    }
   else {
    print("Sorry, we'll have to think somewhere else")
    }
}
//Hands on A2
let isRain = true
let isSunnyOut = true
let degree = 80
if (!isRain || degree <= 82){
    if isSunnyOut {
        print("I'm going for a walk!")
    }
    else {
        print("I'll be better to stay!")
    }
}
//Hands on B
var dollars : Int = 0
if dollars == 0 {
    print("Sorry, kid. You are broke")
}

dollars = 10
if dollars == 0 {
    print("Sorry, kid. You are broke")
} else {
    print("You've got some spending money")
}

dollars = 105
if dollars == 0 {
    print("Sorry, kid. You are broke")
} else if dollars < 100 {
    print("You've got some spending money")
} else {
    print("Looks to me like you're rich!")
}

//Hands on C
var step = 50
let stepGoal = 10000
if Double(step) < 0.5 * Double(stepGoal) {
    print("You're almost halfway there")
} else {
    print("You're over halfway there")
}
if Double(step) < 0.1 * Double(stepGoal) {
    print("Way to get a good start today!")
} else if Double(step) < 0.5 * Double(stepGoal){
    print("You're almost halfway there")
} else {
    print("You're over halfway there")
}

//Hands on A kedua
let leaguePosition = 1
switch leaguePosition {
case 1:
    print("Champions!")
case 2:
    print("Runners Up!")
case 3:
    print("Third place!")
default:
    print("Bad season!")
}
switch leaguePosition {
case let leaguePosition where (leaguePosition >= 1 && leaguePosition <= 3) :
    print("Medal winner")
default:
    print("No medal awarded!")
}

//Hands on B kedua: case tu spesifiknya ke bool, kalo mau dibuat condition kaya gini ya
let currentHR = 135
switch currentHR {
case let currentHR where currentHR < 101 :
    print("Go up!")
case let currentHR where (currentHR > 100 && currentHR < 121 ) :
    print("You're in The Very Light Zone...")
case let currentHR where (currentHR > 120 && currentHR < 141 ) :
    print("You're in The Light Zone...")
case let currentHR where (currentHR > 140 && currentHR < 161 ) :
    print("You're in The Moderate Zone...")
case let currentHR where (currentHR > 160 && currentHR < 181 ):
    print("You're in The Hard Zone...")
case let currentHR where (currentHR > 180 && currentHR < 201 ) :
    print("You're in The Maximum Zone...")
default:
    print("It's Over! Please slow it down!")
}

//Hands on C lagi
let temperature = 70
if temperature >= 65 && temperature <= 75 {
    print("Temperature is just right.")
} else if temperature < 65 {
    print("It's too cold!")
} else {
    print("It's too hot!")
}
