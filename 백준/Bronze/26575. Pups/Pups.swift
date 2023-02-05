import Foundation

let n = Int(readLine()!)!

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Double($0)! }
    let a = input[0] * input[1] * input[2] * 100
    let int = Int(a.rounded())
    print("$\(int/100).\(int%100/10)\(int%10)")
}
