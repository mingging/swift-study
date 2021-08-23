import UIKit

// 별찍기
for line in 1...9 {
    for _ in 1...line {
        print("*", terminator: "")
    }
    print()
}

print()

// 별찍기2
for line in 1..<10 {
    for _ in 1..<(10-line) {
        print("*", terminator: "")
    }
    print()
}
