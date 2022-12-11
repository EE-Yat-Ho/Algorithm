import Foundation

let N = Int(readLine()!)!

var stack: [Int] = []
var pattern: [String] = []
var nextPushNum = 1

var isCan = true

for _ in 0..<N {
    let num = Int(readLine()!)!
    
    while(nextPushNum <= num) {
        stack.append(nextPushNum)
        nextPushNum += 1
        pattern.append("+")
    }
    
    if stack.last! == num {
        stack.removeLast()
        pattern.append("-")
    } else {
        isCan = false
        break
    }
}

if isCan {
    print(pattern.joined(separator: "\n"))
} else {
    print("NO")
}
