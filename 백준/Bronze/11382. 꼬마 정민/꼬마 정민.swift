import Foundation

print(readLine()!.split(separator: " ").reduce(0, {$0 + Int("\($1)")! }))