import Foundation

let N = Int(readLine()!)!

var rank = 0
for i in 666... {
    
    var temp = i
    while temp > 665 {
        if temp % 1000 == 666 {
            rank += 1
            break
        }
        temp /= 10
    }
    
    if rank == N {
        print(i)
        break
    }
}
