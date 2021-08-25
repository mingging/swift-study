import UIKit

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

// 상속의 구현
class Car : Vehicle3 {
    var wheelCount:Int
    var seatCount:Int
    
    init(wheelCount:Int, seatCount:Int) {
        self.wheelCount = wheelCount
        self.seatCount = seatCount
    }
}

var car = Car(wheelCount: 4, seatCount: 2)
car.speedUp() // 부모클래스의 메소드 실행
print(car.speed)

// 메소드 재정의
class Truck1 : Car {
    var loadage:Int = 0
    func load() {print("load")}
    func unLoad() {print("unLoad")}
    override func speedUp() {
        speed += 5
    }
}

class SportsCar : Car {
    override func speedUp() {
        speed += 20
    }
}

var car2 = Car(wheelCount: 4, seatCount: 4)
car2.speedUp()
print(car2.speed)
var truck1 = Truck1(wheelCount: 6, seatCount: 2)
truck1.speedUp()
print(truck1.speed)
var sportsCar = SportsCar(wheelCount: 4, seatCount: 2)
sportsCar.speedUp()
print(sportsCar.speed)

// 생성자 재정의
class Truck2 : Car {
    var loadage:Int
    func load() {print("load")}
    func unLoad() {print("unLoad")}
    
    init(loadage:Int, wheelCount:Int, seatCount:Int) {
        self.loadage = loadage
        super.init(wheelCount: wheelCount, seatCount: seatCount)
    }
    
    override func speedUp() {
        speed += 5
    }
}

var truck2 = Truck2(loadage: 1000, wheelCount: 6, seatCount: 2)
truck2.speedUp()

// 클래스의 선언
class Vehicle {
    var wheels:Int // 멤버변수
    var seats:Int
    var engine:Int

    init(wheels:Int, seats:Int, engine:Int) { // 생성자
        self.wheels = wheels
        self.seats = seats
        self.engine = engine
    }
    
    func drive() {
        print("run")
    }
}

var bike = Vehicle(wheels: 2, seats: 1, engine: 2)
print("bike.wheels = \(bike.wheels)")
print("bike.seats = \(bike.seats)")
bike.wheels = 3
print("bike.wheels = \(bike.wheels)")
bike.drive()

var car3 = Vehicle(wheels: 4, seats: 4, engine: 4)
print("car3.wheels = \(car3.wheels)")
print("car3.seats = \(car3.seats)")
car3.drive()

var copyBike = bike
copyBike.wheels = 5
print("bike.wheels = \(bike.wheels)")
