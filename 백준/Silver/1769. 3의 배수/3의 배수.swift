import Foundation

var str = readLine()!

var temp = 0
var answer = 0
if str.count == 1 {
    temp = Int(str)!
} else {
    temp = str.reduce(0, { $0 + Int("\($1)")! })
    answer = 1
}

while temp > 9 {
    var temp2 = temp
    var sum = 0
    while temp2 > 0 {
        sum += temp2 % 10
        temp2 /= 10
    }
    temp = sum
    answer += 1
}

print(answer)
print(temp % 3 == 0 ? "YES" : "NO")