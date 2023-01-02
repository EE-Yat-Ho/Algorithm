import Foundation

print(
    readLine()!
        .map {
            let ascii = Int($0.asciiValue!)
            return String(UnicodeScalar(ascii + (ascii > 90 ? -32 : 32))!)
        }
        .joined(separator: "")
)