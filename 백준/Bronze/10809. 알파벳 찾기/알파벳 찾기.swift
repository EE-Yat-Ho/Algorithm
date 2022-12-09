import Foundation

let string = readLine()!

var arr = Array(repeating: -1, count: 26)

string.enumerated().forEach {
    if arr[Int($0.element.asciiValue!) - 97] == -1 {
        arr[Int($0.element.asciiValue!) - 97] = $0.offset
    }
}

var answer = arr.reduce("", { "\($0) \($1)" })
answer.removeFirst()
print(answer)
