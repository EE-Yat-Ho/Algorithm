// 넣고,
// 꽉 찼으면 프린트. 빼고 다음꺼
// 덜 찼으면 넣은 채로 다음꺼. 빼고 다음꺼

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let M = input[1]

var arr: [Int] = []
testFunc(1)

func testFunc(_ idx: Int) {
    
    if idx > N { return }
    
    arr.append(idx)
    if arr.count == M {
        print(arr.map { String($0) }.joined(separator: " "))
    } else {
        testFunc(idx + 1)
    }
    arr.removeLast()
    testFunc(idx + 1)
}