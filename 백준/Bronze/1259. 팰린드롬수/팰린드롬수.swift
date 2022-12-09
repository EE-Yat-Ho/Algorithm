import Foundation

while(true) {

    var N = Int(readLine()!)!
    if N == 0 { break }
    
    var ints: [Int] = []
    
    while(N > 0) {
        ints.append(N % 10)
        N /= 10
    }
    
    var s = 0
    var e = ints.count - 1
    var isPelNum = true
    while(s <= e) {
        if ints[s] != ints[e] {
            isPelNum = false
            break
        }
        
        s += 1
        e -= 1
    }
    
    print(isPelNum ? "yes" : "no")
}
