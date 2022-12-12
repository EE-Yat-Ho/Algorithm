import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }


// 최대 공약수
func gcd(_ a: Int, _ b: Int) -> Int {
    if (b == 0) { return a }
    return gcd(b, a % b)
}
// 최소 공배수
func lcm(_ a: Int, _ b: Int) -> Int {
    return a * b / gcd(a, b)
}

print(gcd(input[0], input[1]))
print(lcm(input[0], input[1]))
