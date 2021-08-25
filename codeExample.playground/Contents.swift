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

// 정사각형 관리 클랙스
class Square {
    var horizontal = 10
    var vertical = 10
    
    // 넓이를 입력받아 가로, 세로 관리(가로, 세로의 값을 바꾼다)
    func area(area:Double) -> String {
        horizontal = Int(sqrt(area))
        vertical = Int(sqrt(area))
        return "넓이: \(area), 세로: \(vertical), 가로: \(horizontal)"
    }
    
    // 가로, 세로를 두배로 만들고 튜플로 반환
    func doubleSquare() -> (Int, Int) {
        horizontal *= 2
        vertical *= 2
        return (horizontal, vertical)
    }
}

var square = Square()
print(square.area(area: 64))
print(square.doubleSquare())

class Square2 {
    // 가로, 세로 관리
    var width = 0.0
    var height = 0.0
    // 넓이를 입력받아 가로, 세로 관리 프로퍼티
    var area: Double{
        get{return width * height} // 읽을 때
        set(newValue){ // 쓸 때
            width = sqrt(newValue)
            height = width
        }
    }
    
    // 가로, 세로를 두배로 만들고 튜플 반환
    func duplicate() -> (Double, Double) {
        width = width * 2
        height = width
        return (width, height)
    }
    
}

var square2 = Square2()
square2.area = 70
print(square2.height, square2.width)
print(square2.duplicate())

// 클래스 상속 실습
class Vehicle3 {
    var speed = 0.0
    var mile: Double {
        get {return Double(speed) * 0.6213} // 속성값을 읽을 때
        set(newValue) {speed = newValue * 1.6} // 속성값을 쓸 때 // 생략 가능 (기본이 get이 됨)
    }
    func speedUp() {speed += 10}
    func speedDn() {speed -= 10}
    func speed2Mile() -> Double { // 반환값이 있는 메소드
        return Double(speed) * 0.6213
    }
    init () {}
}

// 상속의 구현
class Car : Vehicle3 {
    var wheelCount:Int
    var seatCount:Int
    
    init(wheelCount:Int, seatCount:Int) {
        self.wheelCount = wheelCount
        self.seatCount = seatCount
    }
}

// Car class를 상속받아서 Truck class를 정의하라
class Truck : Car {
    // 적재량을 관리하는 loadage 변수를 정의하라
    var loadage:Int
    
    // load를 화면에 인쇄하는 load 메소드를 정의하라
    func load() {
        print("load")
    }
    
    // unLoad를 화면에 인쇄하는 unLoad 메소드를 정의하라
    func unLoad() {
        print("unLoad")
    }
    
    init(loadage:Int, wheelCount:Int, seatCount:Int) {
        self.loadage = loadage
        super.init(wheelCount: wheelCount, seatCount: seatCount)
    }
}

var truck = Truck(loadage: 10, wheelCount: 4, seatCount: 2)
truck.load()
truck.unLoad()

class Truck2 : Car {
    var loadage:Int = 0
    func load(){print("load")}
    func unLoad(){print("unLoad")}
}

var truck2 = Truck2(wheelCount: 6, seatCount: 2)
truck2.load()
truck2.unLoad()
