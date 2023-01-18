let n = Int(readLine()!)!
var answer = n / 5
if n % 5 > 0 { answer += 1 }
print(answer)