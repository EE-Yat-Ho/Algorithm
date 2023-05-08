let a = Int(readLine()!)!
let b = Int(readLine()!)!
let c = Int(readLine()!)!
let d = Int(readLine()!)!

if a == b, b == c, c == d {
    print("Fish At Constant Depth")
}
else if a < b, b < c, c < d {
    print("Fish Rising")
}
else if a > b, b > c, c > d {
    print("Fish Diving")
}
else {
    print("No Fish")
}