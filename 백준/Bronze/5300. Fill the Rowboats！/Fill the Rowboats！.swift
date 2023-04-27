let n = Int(readLine()!)!
var answer = ""
for i in 1...n {
    answer.append("\(i) ")
    if i % 6 == 0 {
        answer.append("Go! ")
    }
}
if n % 6 != 0 {
    answer.append("Go! ")
}
answer.removeLast()
print(answer)
