n,m=map(int,input().split())
print(n//m)
print(n%m)
      
"""
import Foundation

let input = readLine()!.split(separator: " ").map { String($0) }

let n = NSDecimalNumber(string: input[0])
let m = NSDecimalNumber(string: input[1])

var div = (n.decimalValue / m.decimalValue)

var decimalPointer = UnsafeMutablePointer<Decimal>.allocate(capacity: 10)
NSDecimalRound(decimalPointer, &div, 0, .down)
div = decimalPointer.pointee

let remain = n.decimalValue - (m.decimalValue * div)
print(div)
print(remain)
"""
