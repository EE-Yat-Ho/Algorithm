let a = Int(readLine()!)!
let b = Int(readLine()!)!
let c = Int(readLine()!)!
let d = Int(readLine()!)!
let A = Int(readLine()!)!
let B = Int(readLine()!)!

var sum = a + b + c + d + A + B
sum -= A < B ? A : B

// get min
var temp = a < b ? a : b
temp = temp < c ? temp : c
temp = temp < d ? temp : d
sum -= temp

print(sum)
