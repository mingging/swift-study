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
    var mile: Double {
        return Double(speed) * 0.6213
    }
    func speedUp() {speed += 10}
    func speedDn() {speed -= 10}
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
        get {return Double(speed) * 0.6213}
        set(newValue) {speed = newValue * 1.6}
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
