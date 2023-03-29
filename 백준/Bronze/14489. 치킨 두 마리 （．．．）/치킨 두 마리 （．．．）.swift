let arr = readLine()!.split(separator: " ").map { Int($0)! }
let sum = arr[0] + arr[1]

let price = Int(readLine()!)!
let paied = sum - price - price
if paied >= 0 {
    print(paied)
} else {
    print(sum)
}