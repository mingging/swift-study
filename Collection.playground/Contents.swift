import UIKit

// Collection
var bts1 = ["진","슈가","제이홉", "RM","지민","뷔","정국"]
let bts2 = ["김석진","민윤기","정호석","김남준","박지민","김태형","전정국"]
var bts3:Array<String> = ["진","슈가","제이홉", "RM","지민","뷔","정국"]
var bts4:[String] = ["진","슈가","제이홉", "RM","지민","뷔","정국"]
var bts5 = Array<String>()
bts5.append("")
bts5.append("선우")

// Array 활용
var mmm1 = ["솔라", "문별", "휘인", "화사"]
let member1 = mmm1[0]
print("첫번째 멤버는 \(member1) 입니다")
mmm1[3] = "화사자"
mmm1.append("용선해")
print(mmm1)
mmm1.insert("문햄찌", at: 3)
print(mmm1)

for member in mmm1 {
    print(member)
}

let length = mmm1.count
print(length)

for index in 1...(length) {
    print("\(index)번째 멤버는 \(mmm1[index-1])")
}

mmm1.append("무무") //추가
print(mmm1)
mmm1.insert("무무", at: 1) //삽입
print(mmm1)
mmm1.remove(at: 1) //삭제
mmm1.append(contentsOf: ["꼬모","대박이"])
print(mmm1)
mmm1 += [ "김용선","문별이"]
print(mmm1)
let part = mmm1[0...2]
print(part)
mmm1[0...2] = ["정휘인","안혜진"]
print(mmm1)


// Set 선언과 초기화
var set1: Set<String> = Set<String>()
var set2: Set<String> = []
var set3: Set<String> = ["솔라", "문별", "휘인", "화사"]
// Set에서는 형지정을 생략하면 Array로 인식된다.
print(set3)
var nums = [1,2,3] // array로 인식됨
print(nums)

for name in set3 {
    print(name)
}

// Set 활용
let result = set3.insert("솔라")
print(result) // (inserted: false, memberAfterInsert: "솔라")
// 같은 값이 있으면 추가가 안된다
let result1 = set3.insert("김용선")
print(result1) // (inserted: true, memberAfterInsert: "김용선")
let result2 = set3.remove("김용선")
print(result2) // Optional("김용선")
let result3 = set3.remove("김용선")
print(result3) // nil

let students :Set<String> = ["덕선", "선우", "정환", "동룡", "가을", "왕조현", "장만옥"]
let family :Set<String> = ["보라", "덕선", "가을"]
// 합집합
let unionSet = students.union(family)
print(unionSet)
// 교집합
let intersectionSet = students.intersection(family)
print(intersectionSet)
// 여집합
let symmetricDifferenceSet = students.symmetricDifference(family)
print(symmetricDifferenceSet)
// 차집합
let substractSet = students.subtracting(family)
print(substractSet)

let 쌍문여고: Set<String> = ["덕선", "왕조현", "장만옥"]
let 쌍문고: Set<String> = ["선우", "정환", "동룡", "가을"]

쌍문여고.isSubset(of: students) // 부분집합
쌍문고.isSubset(of: students) // 부분집합
쌍문여고.isDisjoint(with: 쌍문고) // 배타적관계
students.isSuperset(of: 쌍문고) // 초집합(상위집합)

// Tuple
let tupleValue = ("a", "b", 1, 2.5, true)
tupleValue.0

let(a, b, c, d, e) = tupleValue
print(a)

let tpl01 : (Int, Int) = (100, 100)
let tpl02 : (Int, String, Int) = (100, "a", 200)
let tpl03 : (Int, (String, String)) = (100, ("t", "v"))
let tpl04 : (String) = ("sample string")

// Dictionary
var capital1 = ["US":"Washington"]
capital1.updateValue("Seoul", forKey: "KR") // 추가
capital1.updateValue("London", forKey: "EN") // 추가
capital1.updateValue("Paris", forKey: "FR") // 추가
capital1.updateValue("Ottawa", forKey: "CA") // 추가
capital1.updateValue("Beijing", forKey: "CN") // 추가
capital1.updateValue("Sejong", forKey: "KR") // 수정
capital1.removeValue(forKey: "CN") // 삭제
print(capital1)

var capital5 = ["KR":"Seoul", "EN":"London", "FR":"Paris"]
print(capital5)
capital5["EN"]
capital5["FR"]
capital5["KR"] = "Sejong"
capital5["JP"] = "Tokyo"
print(capital5)
capital5["JP"] = nil
print(capital5["FR"])
print(capital5)

// Dictionary의 순회 탐색
var capitals = ["KR":"Seoul", "EN":"London", "FR":"Paris"]
for (country, capital) in capitals { // (country, capital) => Tuple
    print("\(country)'s capital is \(capital)")
}

// Collection 간의 사용
// 배열요소로 튜플 사용
var tArray:Array<(String, Int)> = [("a", 1), ("b", 2)]
print(tArray[1])
let t1 = tArray[0]
t1.0
t1.1

// 튜플요소로 배열 사용
var tuple:([String], Int) = (["덕선", "수현"], 3)
tuple.0

// 딕셔너리의 Value로 배열 사용
var dic:[String:[String]] = ["name":["덕선", "수현"]]
print(dic["name"])

// 배열요소로 딕셔너리 사용
var dArray:[[String:String]] = [["a":"b", "c":"d"], ["c":"d"]]
print(dArray[0])
