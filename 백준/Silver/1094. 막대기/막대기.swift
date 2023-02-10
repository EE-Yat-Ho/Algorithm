let n = Int(readLine()!)!
let str = String(n, radix: 2)
print(str.filter { $0 == "1" }.count)