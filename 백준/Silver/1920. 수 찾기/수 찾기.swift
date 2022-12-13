import Foundation

_ = readLine()
let arr = readLine()!.split(separator: " ").map { Int($0)! }.sorted()

_ = readLine()

readLine()!.split(separator: " ").forEach {
    let targetNum = Int($0)!
    
    var minIdx = 0
    var maxIdx = arr.count - 1
    var midIdx = maxIdx / 2
    
    var find = false
    
    while minIdx <= maxIdx {
        if targetNum == arr[midIdx] {
            find = true
            break
        }
        
        else if targetNum > arr[midIdx] {
            if minIdx != midIdx {
                minIdx = midIdx
            } else {
                minIdx += 1
            }
        }
        
        else {
            if maxIdx != midIdx {
                maxIdx = midIdx
            } else {
                maxIdx -= 1
            }
        }
        
        midIdx = (minIdx + maxIdx) / 2
    }
    
    print(find ? 1 : 0)
}

