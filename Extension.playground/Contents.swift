import UIKit

// 클래스나 구조체 확장
extension Double {
    var km : Double {
        get{return self * 1000.0}
        set(value) {self = value*1000.0}
    }
    var m : Double {return self}
    var cm : Double {return self / 100.0}
    var mm : Double {return self / 1000.0}
    var description : String {
        return "\(self)km는 \(self.km)m, \(self)cm는 \(self.cm)m, \(self)mm는 \(self.mm)m 입니다."
    }
}

2.km
5.5.cm
7.0.description
let distance = 42.0.km + 195.m
print("마라톤의 총 거리는 \(distance)m입니다.")

extension Int {
    // mutating - 자신을 바꿀 수 있게 함
    mutating func square() { // 함수 확장
        self = self * self
    }
}

var value = 3
value.square()
print(value)
