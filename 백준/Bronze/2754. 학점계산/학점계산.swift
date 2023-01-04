import Foundation

//A+: 4.3, A0: 4.0, A-: 3.7
//B+: 3.3, B0: 3.0, B-: 2.7
//C+: 2.3, C0: 2.0, C-: 1.7
//D+: 1.3, D0: 1.0, D-: 0.7
//F : 0.0

let str = readLine()!
var answer = 0.0

if str.first == "A" {
    answer += 4
} else if str.first == "B" {
    answer += 3
} else if str.first == "C" {
    answer += 2
} else if str.first == "D" {
    answer += 1
}

if str.last == "+" {
    answer += 0.3
} else if str.last == "-" {
    answer -= 0.3
}

print(answer)