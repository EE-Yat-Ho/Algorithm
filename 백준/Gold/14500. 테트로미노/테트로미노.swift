import Foundation

// 일단 브루트포스
// ㅡ ㅣ, ㅁ, ㅜ ㅏ ㅓ ㅗ, ㄱㄴ모양4개, ㄴ모양8개  2 1 4 4 8 총 19개

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let M = input[1]

var arr = Array(repeating: Array(repeating: 0, count: M), count: N)

for n in 0..<N {
    arr[n] = readLine()!.split(separator: " ").map { Int($0)! }
}

var answer = -1
for n in 0..<N {
    for m in 0..<M {
        // ㅡ
        if n + 3 < N {
            let sum = arr[n][m] + arr[n + 1][m] + arr[n + 2][m] + arr[n + 3][m]
            if answer < sum { answer = sum }
        }
        // ㅣ
        if m + 3 < M {
            let sum = arr[n][m] + arr[n][m + 1] + arr[n][m + 2] + arr[n][m + 3]
            if answer < sum { answer = sum }
        }
        // ㅁ
        if n + 1 < N && m + 1 < M {
            let sum = arr[n][m] + arr[n][m + 1] + arr[n + 1][m] + arr[n + 1][m + 1]
            if answer < sum { answer = sum }
        }
        // ㅜ
        if n + 2 < N && m + 1 < M {
            let sum = arr[n][m] + arr[n + 1][m] + arr[n + 2][m] + arr[n + 1][m + 1]
            if answer < sum { answer = sum }
        }
        // ㅏ
        if n + 1 < N && m + 2 < M {
            let sum = arr[n][m] + arr[n][m + 1] + arr[n][m + 2] + arr[n + 1][m + 1]
            if answer < sum { answer = sum }
        }
        // ㅗ
        if n + 2 < N && m - 1 > -1 {
            let sum = arr[n][m] + arr[n + 1][m] + arr[n + 2][m] + arr[n + 1][m - 1]
            if answer < sum { answer = sum }
        }
        // ㅓ
        if n - 1 > -1 && m + 2 < M {
            let sum = arr[n][m] + arr[n][m + 1] + arr[n][m + 2] + arr[n - 1][m + 1]
            if answer < sum { answer = sum }
        }
        // ㄱㄴ
        if n + 2 < N && m + 1 < M {
            let sum = arr[n][m] + arr[n + 1][m] + arr[n + 1][m + 1] + arr[n + 2][m + 1]
            if answer < sum { answer = sum }
        }
        // ┛┏
        if n + 2 < N && m - 1 > -1 {
            let sum = arr[n][m] + arr[n + 1][m] + arr[n + 1][m - 1] + arr[n + 2][m - 1]
            if answer < sum { answer = sum }
        }
        // ┏┛
        if n - 1 > -1 && m + 2 < M {
            let sum = arr[n][m] + arr[n][m + 1] + arr[n - 1][m + 1] + arr[n - 1][m + 2]
            if answer < sum { answer = sum }
        }
        // ┗┓
        if n + 1 < N && m + 2 < M {
            let sum = arr[n][m] + arr[n][m + 1] + arr[n + 1][m + 1] + arr[n + 1][m + 2]
            if answer < sum { answer = sum }
        }
        // ㄴㅡ
        if n + 2 < N && m + 1 < M {
            let sum = arr[n][m] + arr[n][m + 1] + arr[n + 1][m + 1] + arr[n + 2][m + 1]
            if answer < sum { answer = sum }
        }
        // ┏ㅡ
        if n + 2 < N && m + 1 < M {
            let sum = arr[n][m] + arr[n][m + 1] + arr[n + 1][m] + arr[n + 2][m]
            if answer < sum { answer = sum }
        }
        // ㅡ┓
        if n + 2 < N && m + 1 < M {
            let sum = arr[n][m] + arr[n + 1][m] + arr[n + 2][m] + arr[n + 2][m + 1]
            if answer < sum { answer = sum }
        }
        // ㅡ┛
        if n + 2 < N && m - 1 > -1 {
            let sum = arr[n][m] + arr[n + 1][m] + arr[n + 2][m] + arr[n + 2][m - 1]
            if answer < sum { answer = sum }
        }
        // ┓
        if n + 1 < N && m + 2 < M {
            let sum = arr[n][m] + arr[n + 1][m] + arr[n + 1][m + 1] + arr[n + 1][m + 2]
            if answer < sum { answer = sum }
        }
        // ┗
        if n + 1 < N && m + 2 < M {
            let sum = arr[n][m] + arr[n][m + 1] + arr[n][m + 2] + arr[n + 1][m + 2]
            if answer < sum { answer = sum }
        }
        // ┏
        if n + 1 < N && m + 2 < M {
            let sum = arr[n][m] + arr[n + 1][m] + arr[n][m + 1] + arr[n][m + 2]
            if answer < sum { answer = sum }
        }
        // ┛
        if n + 1 < N && m - 2 > -1 {
            let sum = arr[n][m] + arr[n + 1][m] + arr[n + 1][m - 1] + arr[n + 1][m - 2]
            if answer < sum { answer = sum }
        }
    }
}
print(answer)