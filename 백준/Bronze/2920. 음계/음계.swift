import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }

var up = false
var down = false

for i in 0..<input.count - 1 {
    if input[i] < input[i + 1] {
        up = true
    }
    else {
        down = true
    }
}

if up, down {
    print("mixed")
} else if up {
    print("ascending")
} else {
    print("descending")
}
