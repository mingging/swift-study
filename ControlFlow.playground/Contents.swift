import UIKit

// if 조건문
var vocalLine = "Solar, WheeIn"
var rapLine = "MoonByul, HwaSa"
var searchLine = vocalLine
var member = "WheeIn"

if (searchLine == vocalLine) {
    print("MMM's vocalLine is \(vocalLine)")
} else {
    print("MMM's rapLine is \(rapLine)")
}

if (searchLine == vocalLine) {
    if (member == "Solar") {
        print("Solar is MMM's MainVocal")
    } else if (member == "WheeIn"){
        print("WheeIn is MMM's SubVocal")
    } else {
        print("She is not VocalLine")
    }
} else {
    print("no data")
}

// swich case
var action = "sleeping"
var seolsAction = ""

switch action {
case "sleeping": seolsAction = "잔다"; break;
case "eatting": seolsAction = "먹는다"; break;
case "drinking": seolsAction = "마신다"; break;
case "playing": seolsAction = "논다"; break;
default: seolsAction = "가만히 있는다"; break;
}

print("설이가 \(seolsAction)")

// for 루프


// 구구단
for dan in 2...9 {
    print("구구단 \(dan)단")
    for num in 1...9 {
        print("\(dan) x \(num) = \(dan * num)")
    }
    print("\n")
}

let mmm = ["솔라", "문별", "휘인", "화사"]
for name in mmm {
    print("안녕! \(name)")
}

var capital = ["KR":"Seoul", "EN":"London", "PR":"Paris"]
for (country, capital) in capital {
    print("country: \(country), capital: \(capital)")
}

// while
var age = 0
while age < 5 {
    print("\(age)살 입니다")
    age += 1
}

//var age1 = 0
//var num1 = 0
//while age1 < 5 {
//    while num1 < 10 {
//        print("\(age1)살입니다.")
//        num1 += 1
//    }
//    num1 = 0
//    age1 += 1
//}

//repeat ~ while 구문
var n = 100
repeat {
    n = n * 2
    print("\(n)")
}
while n < 1000

print()

var m = 100
repeat {
    m = m * 5
    print("\(n)")
} while m < 1000

print()

// break
for row in 0...5 {
    if (row == 2) {
        break
    }
    print("\(row) was excuted!")
}

print()

// continue
for row in 0...5 {
    if (row == 2) {
        continue
    }
    print("\(row) was excuted!")
}
