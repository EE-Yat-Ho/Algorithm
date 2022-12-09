import Foundation

var dict: [Int: Int] = [:]

readLine()!.forEach {
    var asc = Int($0.asciiValue!)
    
    if asc > 96 { asc -= 97 }
    else if asc > 64 { asc -= 65 }
    
    dict[asc] = (dict[asc] ?? 0) + 1
    
}

var maxV = Int.min
var maxK = 0
var isSameMax = false
dict.forEach {
    if $0.value > maxV {
        maxV = $0.value
        maxK = $0.key
        isSameMax = false
    }
    else if $0.value == maxV {
        isSameMax = true
    }
}

if isSameMax {
    print("?")
} else {
    print(Character(UnicodeScalar(maxK + 65)!))
}
