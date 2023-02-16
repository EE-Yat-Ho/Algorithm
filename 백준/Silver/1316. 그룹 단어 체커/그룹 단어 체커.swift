let n = Int(readLine()!)!
var set: [String: Bool] = [:]
var answer = 0

for _ in 0..<n {
    
    set = [:]
    let word = readLine()!.map { String($0) }
    var preChar = String(word.first!)
    answer += 1
    
    for nowChar in word {
        if set[nowChar] != nil && preChar != nowChar {
            answer -= 1
            break
        }
        set[nowChar] = true
        preChar = nowChar
    }
}

print(answer)