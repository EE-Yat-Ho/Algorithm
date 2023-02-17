let input = readLine()!.split(separator: " ").map { Int($0)! }
let a = input[0]
let b = input[1]
var arr = Array(repeating: 1, count: b)

while true {
    
    print(arr.map { String($0) }.joined(separator: " "))
    if arr[0] == a { break }
    
    for i in 1...arr.count {
        let index = b - i
        if arr[index] < a {
            arr[index] += 1
            
            for j in index+1..<b {
                arr[j] = arr[index]
            }
            
            break
        }
    }
}