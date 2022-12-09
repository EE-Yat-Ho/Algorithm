import Foundation

let T = Int(readLine()!)!

for _ in 0..<T {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let N = input.first!
    
    let aver = Double(input[1...].reduce(0, { $0 + $1 })) / Double(N)
    let overAverCount = input[1...].filter { Double($0) > aver }.count
    
    let answer = Double(overAverCount) / Double(N) * 100.0
    let string = String(format: "%.3f", round(answer * 1000) / 1000.0)
    print("\(string)%")
}
