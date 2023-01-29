let input = readLine()!.split(separator: " ").map { Int($0)! }

if input[0] * (100 - input[1]) / 100 >= 100 {
    print(0)
} else {
    print(1)
}