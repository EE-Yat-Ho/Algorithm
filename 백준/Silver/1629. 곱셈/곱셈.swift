import Foundation

// A %= C
// B %= C
// C가 엄청 크면 소용 없음.. B가 너무 큼..

// 같은 수가 나오면 싸이클..? x

// O(B) -> O(logB)

// B가 짝수 일 때
// A^B % C = (A^(B/2) * A^(B/2)) % C = (A^(B/2) % C) * (A^(B/2) % C)

// B가 홀수 일 때
// A^B % C = (A^(B/2) * A^(B/2) * A) % C = (A^(B/2) % C) * (A^(B/2) % C) * (A % C)

// 2147483647 2147483646 2147483645

let input = readLine()!.split(separator: " ").map { Int64($0)! }
var A = input[0]
var B = input[1]
let C = input[2]

func dfs(_ num: Int64) -> Int64 {
    
    if num == 0 { return 1 }
    
    let result = dfs(num / 2)
    return result % C * result % C * (num % 2 == 0 ? 1 : A) % C
}

print(dfs(B))