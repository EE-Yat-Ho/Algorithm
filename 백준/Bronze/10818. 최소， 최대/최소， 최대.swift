let _ = Int(readLine()!)!

var m = Int.max
var M = Int.min

readLine()!.split(separator: " ").map{Int($0)!}.forEach {
    if $0 > M { M = $0 }
    if $0 < m { m = $0 }
}
print("\(m) \(M)")
