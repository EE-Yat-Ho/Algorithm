let T = Int(readLine()!)!

var arr: [Int] = [0]

var add = 1
var dist = 0
while true {
    dist += add
    arr.append(dist)
    dist += add
    arr.append(dist)
    add += 1
    
    if dist > 2247483648 {
        break
    }
}

for _ in 0..<T {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let dist = input[1] - input[0]
    
    for i in 0..<arr.count {
        if arr[i] >= dist {
            print(i)
            break
        }
    }
}