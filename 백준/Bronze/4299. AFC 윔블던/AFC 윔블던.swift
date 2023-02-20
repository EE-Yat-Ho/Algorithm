let input = readLine()!.split(separator: " ").map { Int($0)! }

let sum = input[0]
let dif = input[1]
let x = (sum + dif) / 2
let y = (sum - dif) / 2

if (sum + dif) % 2 == 1 || y < 0 {
    print(-1)
} else {
    print("\(x) \(y)")
}