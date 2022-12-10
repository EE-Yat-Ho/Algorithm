import Foundation

let N = Int(readLine()!)!

for i in 1... {
    var temp = i
    var num = i
    while temp > 0 {
        num += temp % 10
        temp /= 10
    }
    
    if num == N {
        print(i)
        break
    }
    if i > N {
        print(0)
        break
    }
}
