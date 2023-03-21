let input = readLine()!.split(separator: " ").map { Int($0)! }
let sum = input[0] + input[1] + input[2]
if sum >= 100 {
    print("OK")
} else {
    if input[0] < input[1], input[0] < input[2] {
        print("Soongsil")
    }
    else if input[1] < input[0], input[1] < input[2] {
        print("Korea")
    }
    else {
        print("Hanyang")
    }
}