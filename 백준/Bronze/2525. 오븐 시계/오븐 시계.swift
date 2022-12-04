let input = readLine()!.split(separator: " ")

var h = Int(input[0])!
var m = Int(input[1])!

let duration = Int(readLine()!)!

m += duration
h += m / 60
m = m % 60
h = h % 24

print("\(h) \(m)")
