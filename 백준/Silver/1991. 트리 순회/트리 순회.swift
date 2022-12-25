import Foundation

let n = Int(readLine()!)!
var arr = Array(repeating: [-1, -1], count: 26)

for _ in 1...n {
    
    let input = readLine()!.split(separator: " ").map { Int(Character(String($0)).asciiValue!) - 65 }
    arr[input[0]][0] = input[1]
    arr[input[0]][1] = input[2]
}

// 전위 순회
var answer = ""
wjsdnl(0)
func wjsdnl(_ idx: Int) {
    answer.append(Character(UnicodeScalar(idx + 65)!))
    if arr[idx][0] > 0 { wjsdnl(arr[idx][0]) }
    if arr[idx][1] > 0 { wjsdnl(arr[idx][1]) }
}
print(answer)

// 중위 순회
answer = ""
wnddnl(0)
func wnddnl(_ idx: Int) {
    if arr[idx][0] > 0 { wnddnl(arr[idx][0]) }
    answer.append(Character(UnicodeScalar(idx + 65)!))
    if arr[idx][1] > 0 { wnddnl(arr[idx][1]) }
}
print(answer)

// 후위 순회
answer = ""
gndnl(0)
func gndnl(_ idx: Int) {
    if arr[idx][0] > 0 { gndnl(arr[idx][0]) }
    if arr[idx][1] > 0 { gndnl(arr[idx][1]) }
    answer.append(Character(UnicodeScalar(idx + 65)!))
}
print(answer)