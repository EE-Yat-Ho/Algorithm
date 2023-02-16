let input = readLine()!.split(separator: " ").map { Int($0)! }
let a = input[0]
let b = input[1]

var arr: [(Int, Int)] = [(a, 1)]
var answer = -1

while let target = arr.first {
    if target.0 == b {
        answer = target.1
        break
    }
    
    if b >= target.0 * 2 {
        arr.append((target.0 * 2, target.1 + 1))
    }
    if b >= target.0 * 10 + 1 {
        arr.append((target.0 * 10 + 1, target.1 + 1))
    }
    arr.removeFirst()
}
print(answer)