import UIKit

// 구구단
for dan in 2...9 {
    print("구구단 \(dan)단")
    for num in 1...9 {
        print("\(dan) x \(num) = \(dan * num)")
    }
    print("\n")
}

// 홀수 출력
for odd in 0...10 {
    if (odd % 2 == 0) {
        continue
    }
    print("\(odd) ", terminator: "")
}

print()
print()


// 계산기 함수
func calculator(_ num1:Int, _ num2:Int, _ op:String) -> Int {
    switch op {
    case "+": return num1 + num2
    case "-": return num1 - num2
    case "x": return num1 * num2
    case "/": return num1 / num2
    case "%": return num1 % num2
    default: return 0
    }
}

print(calculator(1, 6, "+"))

// 평점을 구하는 함수

