let input = readLine()!.split(separator: " ").map { Int($0)! }
if input[0] >= 12 && input[0] <= 16 && input[1] == 0 {
    print(320)
} else {
    print(280)
}