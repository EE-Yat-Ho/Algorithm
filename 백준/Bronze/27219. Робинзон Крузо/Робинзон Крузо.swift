let n = Int(readLine()!)!

var answer = ""
for _ in 0..<n/5 {
    answer.append("V")
}
for _ in 0..<n%5 {
    answer.append("I")
}
print(answer)