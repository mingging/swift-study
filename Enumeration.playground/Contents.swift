import UIKit

// Enumeration의 정의
enum Direction {
    case north
    case south
    case east, west
}

var directionToHead = Direction.north
print(directionToHead)

directionToHead = .east // 타입 생략 가능

var directionToHead1 = Direction.east

// 열겨형을 사용하는 switch
switch directionToHead {
case .north : print("북쪽")
case .south : print("남쪽")
case .east : print("동쪽")
case .west : print("서쪽")
}

// Enumeration의 정의
enum HTTPCode : Int { // 열겨형은 각 항목만으로도 값의 역할을 하지만 각 항목별로 원시값을 지정할 수 있다.
    case OK = 200
    case NOT_MODIFY = 304
    case INCORRECT_PAGE = 404
    case SERVER_ERROR = 500
}

print(HTTPCode.OK)
print(HTTPCode.OK.rawValue)

enum Rank : Int {
    case one = 1
    case two, three, four, five
}

print(Rank.four.rawValue)
