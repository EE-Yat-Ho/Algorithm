import Foundation

// 위아래합  2   3   4    5
//   X    1~1 2~3 4~6 7~10
//  sum    1   3   6   10
//  diff   1   2   3    4

let X = Int(readLine()!)!

var diff = 1
var sum = 1
while sum < X {
    diff += 1
    sum += diff
}

let sumUpBottom = diff + 1
let diffMaxToX = sum - X

if diff % 2 == 0 {
    let up = sumUpBottom - 1 - diffMaxToX
    let bottom = sumUpBottom - up
    print("\(up)/\(bottom)")
} else {
    let bottom = sumUpBottom - 1 - diffMaxToX
    let up = sumUpBottom - bottom
    print("\(up)/\(bottom)")
}