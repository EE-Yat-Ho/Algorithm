import Foundation

// 층 0 ~ 14
// 호 1 ~ 14

// 0 : 1 2 3  4  5  6
// 1 : 1 3 6  10 15 21
// 2 : 1 4 10 20 35 56

var arr: [[Int]] = Array(repeating: Array(repeating: 1, count: 14), count: 15)

for i in 0...13 {
    arr[0][i] = i + 1
}

for float in 1...14 {
    for num in 1...13 {
        arr[float][num] = arr[float - 1][num] + arr[float][num - 1]
    }
}


let T = Int(readLine()!)!

for _ in 1...T {
    let float = Int(readLine()!)!
    let num = Int(readLine()!)!
    
    print(arr[float][num - 1])
}


