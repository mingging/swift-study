import UIKit

// 변수 초기화
var index:Int
//print(index)
index = 3
print(index)

var index1:Int = Int() // 0으로 초기화
var index2:Int = Int(3)
var index3 = 3
//var index4:Int = nil

var index5 = Int("3") // Optional Int
var index6 = Int("swift")

print(index5)
print(index6)

// Optional 선언
// 기존의 데이터형 뒤에 ?를 붙이면 옵셔널로 선언
var optInt : Int?
optInt = nil
print(optInt)

var optInt1 : Int? = 1
print(optInt1)

var optStr : String? = "swift"
print(optStr)

var optArr : [String]?
optArr = ["C", "JAVA", "오브젝트-C", "SmallTalk"]
print(optArr)

var optDic : [String:Int]?
optDic = ["국어":94, "수학":88, "영어":96]
print(optDic)

// Optinal 사용
// 옵셔널형은 연산이 불가, 사용하려면 언래핑 후 사용가능
var temp1:Int? = 3
var temp2:Int? = 5
//temp1 + temp2
//temp1 + 30

var optInt2:Int? = 3
print("옵셔널 자체의 값 : \(optInt2)")
print("!로 강제 언래핑한 값 : \(optInt2!)") // Optional 변수 뒤에 !를 붙이면 강제 언래핑
temp1! + temp2!
var index7 = Int("123")!
print(index7)

// Optinal형 forced Unwrapping
// 잘못 unwrapping할 경우 에러
var optStr1:String? = "swift"
print(optStr1)
print(optStr1!)

var capital5 = ["KR":"Seoul", "EN":"London", "FR":"Paris"]
print(capital5["KR"])
print(capital5["kr"])
var krCapital = capital5["KR"]!
//var krCapital1 = capital5["kr"]! // nil을 강제언래핑해서 에러

// Optinal Unwrapping
var temp3:Int? = 123

if (temp3 != nil) {
    print("반환된 값은 \(temp3!)입니다.")
} else {
    print("값 변환에 실패했습니다.")
}

// Swift에서는 언래핑을 위한 문법을 제공
if let val = temp3 {
    print("변환된 값은 \(val)입니다.")
}

var idol:String? = "MAMAMOO"
// if let으로 unwrapping 했을 때 val은 if 블럭 내부에서만 사용가능
if let val = idol {
    print("변환된 값은 \(val)입니다.")
}

func unWrapping() {
    // guard let으로 unwrapping 했을때 val은 현재 코드 블럭 내에서 사용 가능
    guard let val = idol else { return } // return 을 쓰지 않으면 에러가 난다
    print("반환된 값은 \(val)입니다.")
}

unWrapping()

// Optional 자동 해제
let optInt3:Int? = 123
if (optInt3 != nil) {
    if (optInt3 == 123) {
        print("optInt3 == 123")
    } else {
        print("optInt3 != 123")
    }
}

let tempInt:Int? = 123
tempInt! == 123
tempInt == 123
tempInt! == Optional(123)
tempInt == Optional(123)
