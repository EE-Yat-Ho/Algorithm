let n = Int(readLine()!)!

var answer = 1
for _ in 0..<n {
    answer += (Int(readLine()!)! - 1)
}
print(answer)
