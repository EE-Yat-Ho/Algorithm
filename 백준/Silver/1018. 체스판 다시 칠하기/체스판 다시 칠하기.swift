import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }

let N = input[0]
let M = input[1]

var arr: [[Bool]] = []
// W = true , B = false

var answer = Int.max
var firstWAnswer = 0
var firstBAnswer = 0

for _ in 0..<N {
    let string = readLine()!
    arr.append(string.map { $0 == "W" })
}

for Y in 0...N - 8 {
    for X in 0...M - 8 {
        // 시작점 : X, Y
        firstWAnswer = 0
        firstBAnswer = 0
        
        for y in Y...Y + 7 {
            for x in X...X + 7 {
                if y % 2 == 0 { // 짝수 줄
                    // WBWBWB
                    if x % 2 == 0 {
                        // W
                        if !arr[y][x] {
                            firstWAnswer += 1
                        } else {
                            firstBAnswer += 1
                        }
                    } else {
                        // B
                        if arr[y][x] {
                            firstWAnswer += 1
                        } else {
                            firstBAnswer += 1
                        }
                    }
                    
                } else { // 홀수 줄
                    // BWBWBW
                    if x % 2 == 0 {
                        // B
                        if arr[y][x] {
                            firstWAnswer += 1
                        } else {
                            firstBAnswer += 1
                        }
                    } else {
                        // W
                        if !arr[y][x] {
                            firstWAnswer += 1
                        } else {
                            firstBAnswer += 1
                        }
                    }
                }
                
            }
        }
        
        if firstBAnswer < answer { answer = firstBAnswer }
        if firstWAnswer < answer { answer = firstWAnswer }
        
    }
    
}

print(answer)

