let m = Int(readLine()!)!
let d = Int(readLine()!)!

if m == 2, d == 18 {
    print("Special")
} else if m > 2 {
    print("After")
} else if m < 2 {
    print("Before")
} else if d > 18 {
    print("After")
} else {
    print("Before")
}