
var M = Int.min
var w = 0

for i in 1...9 {
    let input = Int(readLine()!)!
    if input > M {
        M = input
        w = i
    }
}

print(M)
print(w)
