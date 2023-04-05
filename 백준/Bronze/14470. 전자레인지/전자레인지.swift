let a = Int(readLine()!)!
let b = Int(readLine()!)!
let c = Int(readLine()!)!
let d = Int(readLine()!)!
let e = Int(readLine()!)!

var answer = 0

if a < 0 {
    answer += (-a * c) + d + (b * e)
} else {
    answer += (b - a) * e
}
print(answer)
