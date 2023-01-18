let N = Int(readLine()!)!

for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    if input[0] * input[1] > input[2] * input[3] {
        print("TelecomParisTech")
    } else if input[0] * input[1] < input[2] * input[3] {
        print("Eurecom")
    } else {
        print("Tie")
    }
}
