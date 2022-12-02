// 최소 공배수
func gcd(_ a: Int, _ b: Int) -> Int {
    if (b == 0) { return a }
    return gcd(b, a % b)
}
// 최대 공약수
func lcm(_ a: Int, _ b: Int) -> Int {
    return a * b / gcd(a, b)
}


let N = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map { Int($0)! }

let max = input.reduce(0, { $0 > $1 ? $0 : $1 } )
let answer = input.reduce(1, { lcm($0, $1) } )


if answer == max {
    // 이미 답에 있으면 젤 작은애랑 곱하면됨
    let min = input.reduce(Int.max, { $0 < $1 ? $0 : $1 } )
    print(answer * min)
} else {
    print(answer)
}


