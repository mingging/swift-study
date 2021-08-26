import UIKit

// 구조체
struct Person {
    var name: String
    var age: Int
    var gender: String
    var height: Double
}

// 구조체의 생성자는 속성을 파악하여 자동생성
var person = Person(name: "홍길동", age: 15, gender: "남", height: 171.7)
print(person.name)
print(person.gender)
print(person.height)

// Swift 구조체
// Swift 구조체에서는 속성과 함께 메소드도 가질 수 있다.
struct Person2 {
    var name: String
    var age: Int
    var gender: String
    var height: Double
    func info() {
        print("이름:\(name), 나이:\(age), 성별:\(gender), 키:\(height)")
    }
}

var person2 = Person2(name: "홍길동", age: 15, gender: "남", height: 171.7)
person2.info()

var person3 = person2
person3.name = "변학도"
person2.info()
person3.info()

