import Foundation

while let input = readLine()?.split(separator: " ") {
    if input.count == 2 {
        print(Int(input[1])! / (Int(input[0])! + 1))
    } else {
        break
    }
}