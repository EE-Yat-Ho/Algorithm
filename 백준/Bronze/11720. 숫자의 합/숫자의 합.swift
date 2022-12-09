import Foundation

let N = Int(readLine()!)!

print(readLine()!.reduce(0, {$0 + Int(String($1))!}))

