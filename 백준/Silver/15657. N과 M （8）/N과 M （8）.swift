let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let M = input[1]

let nums = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
var arr: [Int] = []

f()
func f() {
    if arr.count == M {
        print(arr.map { String($0) }.joined(separator: " "))
        arr.removeLast()
        return
    }
    
    nums.forEach {
        if (arr.last ?? 0) <= $0 {
            arr.append($0)
            f()
        }
    }
    
    if !arr.isEmpty {
        arr.removeLast()
    }
}