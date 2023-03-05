let n = Int(readLine()!)!

var answer = 1

for _ in 0..<n {

    let input = readLine()!.split(separator: " ").map { Int($0)! }
    if input[0] == answer {
        answer = input[1]
    } else if input[1] == answer {
        answer = input[0]
    }
}

print(answer)