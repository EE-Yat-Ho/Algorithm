import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }

let K = input[0]
let N = input[1]

var arr = Array(repeating: 0, count: K)
var sum = 0

for i in 0..<K {
    let line = Int(readLine()!)!
    arr[i] = line
    sum += line
}

var targetLength = sum / N // 가장 좋은 케이스. 버리는 랜선 없음. 가장 긴 길이

var maxLength = sum * 2 / N
var minLength = 1

while maxLength > minLength {
    
    targetLength = (maxLength + minLength) / 2
    
    let count = check(targetLength)
    
    if count >= N {
        // 더 많거나 같게 나왔다 -> 길이 늘리기
        if minLength == targetLength { minLength += 1 }
        else { minLength = targetLength }
    } else {
        // 적게 나왔다 -> 길이 줄이기
        if maxLength == targetLength { maxLength -= 1 }
        else {maxLength = targetLength }
    }
}

print(targetLength)

// 가능한 갯수 리턴
func check(_ targetLength: Int) -> Int {
    arr.reduce(0) { $0 + $1 / targetLength }
}
