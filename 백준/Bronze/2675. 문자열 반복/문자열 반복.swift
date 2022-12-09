import Foundation

let T = Int(readLine()!)!

for _ in 0..<T {
    let input = readLine()!.split(separator: " ")
    
    let N = Int(input[0])!
    var word = String(input[1])
    
    var answer = ""
    word.forEach {
        for _ in 0..<N {
            answer += String($0)
        }
    }
    
    print(answer)
    
}
