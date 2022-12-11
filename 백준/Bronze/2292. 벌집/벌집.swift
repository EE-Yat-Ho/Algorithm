import Foundation

let N = Int(readLine()!)!

//1 7 19 37 ..
//0 6 12 18 ..

var n = 1
var weight = 0
var answer = 1

while (n < N) {
    weight += 6
    n += weight
    answer += 1
}

print(answer)
