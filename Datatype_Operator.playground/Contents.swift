// 기본적으로 포함되지 않은 라이브러리 (라이브러리를 포함시킨다)
// 용량이 커지는 것을 방지 (최적화를 위해)
import UIKit

// 상수 선언
let age = 20 // 정수형 타입 (형추론)
//age = 10 -> 상수이기 때문에 값을 바꿀 수 없음 (에러)

// 변수 선언
var age1 = 20
age1 = 10

let num1 = 5
let num2 = 3
let num3 = 2

// 사칙연산자
num1 + num2
num1 - num2
num1 * num2
num1 / num2
num1 % num2
-num1

// 비교연산자
num1 < num2
num1 > num2
num1 <= num2
num1 >= num2

// 논리연산자
// &&(AND)
num1 > num2 && num1 == num3
num2 > num3 && num1 > num2

// ||(OR)
num1 - num2 == num3 || num2 - num3 == num1
num1 == num2 || num3 != num1

// !(NOT)
!(num1 == num2)

// 대입연산자
var num4 = 3
num4 += 3
num4 -= 3
num4 *= 3
num4 /= 3
num4 %= 2

1...5

// print 함수
print(num4)
print("HI NUMBER \(num4)")
var idol = "MAMAMOO"
print("My Favorite Idol is \(idol)")
print("My Idol ranking \(num4) is \(idol)")
