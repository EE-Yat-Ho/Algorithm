import Foundation

let n = Int(readLine()!)!
for _ in 0..<n {
    var answer = ""
    var preChar: String.Element = Character("`")
    readLine()!.forEach {
        if $0 == preChar { return }
        answer.append($0)
        preChar = $0
    }
    print(answer)
}