import UIKit

// 클래스 정의
class SimpleClass { // SimpleClass 정의
    var name = "SimpleClass" // 문자열형 프로퍼티
    var count = 0 // 정수형 프로퍼티
}

var simpleClass = SimpleClass() // SimpleClass 생성
simpleClass.count = 1 // '.'을 통해서 객체 내부로 접근
var count = simpleClass.count
var simpleClass1 = SimpleClass()
simpleClass1.count = 2
print(simpleClass.count)
print(simpleClass1.count)

// 클래스 정의 메소드
class Vehicle {
    var speed = 0
    func speedUp() { // 클래스 안에 정의된 함수를 특별히 메소드라고 함
        speed += 10
    }
    func speedDn() {
        speed -= 10
    }
}

var someVehicle = Vehicle()
someVehicle.speedUp()
print(someVehicle.speed)

class Vehicle1 {
    var speed = 0
    func speedUp() {speed += 10}
    func speedDn() {speed -= 10}
    func speed2Mile() -> Double { // 반환값이 있는 메소드
        return Double(speed) * 0.6213
    }
}

var someVehicle1 = Vehicle1()
someVehicle1.speedUp()
print(someVehicle1.speed)
var mile = someVehicle1.speed2Mile()

// 클래스 정의 - 연산 프로퍼티
class Vehicle2 {
    var speed = 0
    var mile: Double { // 데이터 중심
        return Double(speed) * 0.6213
    }
    func speedUp() {speed += 10}
    func speedDn() {speed -= 10}
    // 액션 중심
    func speed2Mile() -> Double { // 반환값이 있는 메소드
        return Double(speed) * 0.6213
    }
}

var someVehicle2 = Vehicle2()
someVehicle2.speedUp()
print(someVehicle2.speed2Mile())
print(someVehicle2.mile)

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
}

var someVehicle3 = Vehicle3()
someVehicle3.mile = 94
print(someVehicle3.speed)

// 클래스 정의 - 생성자
class Square1 {
    var width:Double
    var height:Double
    var area:Double {
        get {return width * height}
        set(newValue) {
            width = sqrt(newValue)
            height = width
        }
    }
    
    func duplicate() -> (Double, Double) {
        width = width * 2
        height = height * 2
        return (width, height)
    }
    
    // 생성자
    init(w: Double, h: Double) {
        width = w
        height = h
    }
}

var square1 = Square1(w:10, h:10)
print(square1.area)
square1.area = 25
print("width = \(square1.width) height = \(square1.height)")
square1.duplicate()
print(square1.area)

// 클래스 정의 - self
class Square2 {
    var width = 0.0
    var height = 0.0
    var area:Double {
        get {return width * height}
        set(newValue){
            width = sqrt(newValue)
            height = width
        }
    }
    
    func duplicate() -> (Double, Double) {
        width = width * 2
        height = height * 2
        return (width, height)
    }
    
    init(width: Double, height: Double) {
        self.width = width // 클래스의 width이다
        self.height = height
        self.duplicate()
    }
}
