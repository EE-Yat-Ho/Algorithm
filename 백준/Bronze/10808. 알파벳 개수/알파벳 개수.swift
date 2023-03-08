var answer = Array(repeating: 0, count: 26)
readLine()!.forEach {
    let idx = Int($0.asciiValue! - Character("a").asciiValue!)
    answer[idx] += 1
}
print(answer.map{"\($0)"}.joined(separator: " "))