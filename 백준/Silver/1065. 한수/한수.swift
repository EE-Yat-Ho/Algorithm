import Foundation

var isHanNum = Array(repeating: true, count: 1001)

for i in 100...1000 {
    
    var ints: [Int] = []
    
    var temp = i
    while temp > 0 {
        ints.append(temp % 10)
        temp /= 10
    }

    let diff = ints[0] - ints[1]
    for j in 1..<ints.count - 1 {
        if diff != ints[j] - ints[j + 1] {
            isHanNum[i] = false
            break
        }
    }
}

let N = Int(readLine()!)!

print(isHanNum[1...N].filter {$0}.count)
