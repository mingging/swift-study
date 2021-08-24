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
func calcGrade(score:Int) -> String {
    switch score {
    case 90...100: return "A"
    case 80...89: return "B"
    case 70...79: return "C"
    case 60...69: return "D"
    default: return "F"
    }
}

print("당신의 등급은 \(calcGrade(score: 95))")

// 나머지를 튜플반환하는 함수
func divide(firstNumber:Int, secondNumber:Int) -> (Int, Int) {
    let quotient = firstNumber / secondNumber
    let remainder = firstNumber % secondNumber
    return (quotient, remainder)
}

print(divide(firstNumber: 15, secondNumber: 4))

// 로또 발생기
// 기본 숫자 6개와 보너스 숫자 1개
// 한장에 5천원
func lotto(money:Int) -> Set<Int> {
    var change = 0
    var lottoNum: Set<Int> = []
    if (money < 5000) {
        print("돈이 부족합니다.")
    } else if (money >= 5000) {
        if (money > 5000) {
            change = money - 5000
        }
        while lottoNum.count < 6 {
            lottoNum.insert(Int.random(in: 1...45))
        }
        
        //        for _ in 1...6 {
        //            lottoNum.insert(Int.random(in: 1...9))
        //            print(lottoNum)
        //        }
        //        print(lottoNum.count)
        //        if (lottoNum.count < 6) {
        //            for _ in (lottoNum.count+1)...6 {
        //                var random = Int.random(in: 1...9)
        //                print("random: \(random), contains: \(lottoNum.contains(random))")
        //                if (lottoNum.contains(random)) {
        //                    for _ in true {
        //                        lottoNum.insert(Int.random(in: 1...9))
        //                    }
        //
        //                } else {
        //                    lottoNum.insert(random)
        //                }
        //                print("count: \(lottoNum.count)")
        //                print(lottoNum)
        //            }
        //        }
    }
    print("거스름돈은 \(change)원 입니다.")
    return lottoNum
}

print(lotto(money: 10000))
