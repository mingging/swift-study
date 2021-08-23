import UIKit

// 함수 정의
func sayHello() {
    print("Hello Func!")
}

sayHello() // 함수 호출

func multipl() {
    for i in 2...9 {
        for j in 2...9 {
            print("\(i) x \(j) = \(i*j)")
        }
    }
}

//multipl()

// 매개변수가 있는 함수
func sayHello1(name:String) {
    print("Hello \(name)")
}

// 함수를 호출할 때 매개변수명도 필수임
sayHello1(name:"덕선")

func multipl1(dan:Int) {
    for i in 2...9 {
        print("\(dan) x \(i) = \(dan * i)")
    }
}

multipl1(dan:5)

// 함수 정의
// 반환값이 있는 함수
func sayHello2() -> String {
    return "Hello Func"
}

var returnValue = sayHello2()
print(returnValue)
print(sayHello2())

func threeTimes() -> Int {
    return 3
}

var reuslt = threeTimes()
print(reuslt)

// 매개변수와 반환값이 있는 함수
func sayHello3(name:String) -> String{
    return "Hello \(name)"
}

var returnValue1 = sayHello3(name: "솔라")
print(returnValue1)
print(sayHello3(name: "휘인"))

func threeTimes(val:Int) -> Int {
    return val * 3
}

var result = threeTimes(val:3)
print(result)

// 함수의 매개변수
func sayHelloWithName(name:String, age:Int) -> String {
    return "\(name) is \(age) years old"
}

sayHelloWithName(name: "choi", age: 22)

// 내부 매개변수, 외부 매개변수
// 호출시에는 외부매개변수명을 사용하고 함수정의시에는 내부매개변수 사용
func sayHello(exName name:String, exAge age:Int) -> String {
    return "\(name) is \(age) years old"
}

print(sayHello(exName: "choi", exAge: 22))

// 외부 매개변수의 생략
// 함수 호출시 매개변수를 생략하고 싶을 때는 언더스코어 '_' 를 사용
func sayHello(name:String, _ age:Int) -> String {
    return "\(name) is \(age) years old"
}

print(sayHello(name: "choi", 13))

func sayHello(_ name:String, _ age:Int) -> String {
    return "\(name) is \(age) years old"
}

print(sayHello("choi", 11))

// 매개변수의 기본값
// 매개변수 기본값을 설정해놓으면 매개변수가 없을 때 기본값을 사용
func sayHello11(name:String = "휘인") {
    print("Hello \(name)")
}
sayHello11(name: "화사")
sayHello11()

func hello(name:String = "김용선", age:Int, nickName:String = "솔라") {
    print(name, age, nickName)
}
hello(age: 3)
hello(age: 19, nickName: "볼뚠뚠")

// 가변인자 매개변수
// 가변 인자값
func avg(scores:Int...) -> Double {
    var total = 0
    for score in scores {
        total += score
    }
    return (Double(total)/Double(scores.count))
}

print(avg(scores: 10,20,30,40))

// 튜플반환 함수
func swap(firstNumber n1:Int, secondNumber n2:Int) -> (Int, Int) {
    return (n2, n1)
}

let result1 = swap(firstNumber: 3, secondNumber: 4)
print(result1)

let (first, second) = swap(firstNumber: 3, secondNumber: 4)
print(first)
print(second)

// 변수의 범위와 생명주기
do {
    do {
        var ccnt = 3
        print(ccnt)
    }
//    print(ccnt) // 오류
}

do {
    var ccnt : Int = 0
    do {
        var ccnt = 3
        print(ccnt)
    }
    print(ccnt)
}

var count = 30
func foo() -> Int {
    return count
}

func foo(count1:Int) -> Int {
    return count1
}
//print(count1) // 오류

var count2 = 3
func foo1(count2:Int) -> Int {
    return count2
}
print(foo1(count2: 2))
print(count2)
