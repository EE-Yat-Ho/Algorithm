import Foundation

var isSelfNum = Array(repeating: true, count: 10001)
for i in 1...10000 {
    if isSelfNum[i] { print(i) }
    
    var temp = i
    var num = i
    while temp > 0 {
        num += temp % 10
        temp /= 10
    }
    
    if num < 10001 {
        isSelfNum[num] = false
    }
}
