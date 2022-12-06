import Foundation

func solution(_ n:Int) -> Int {
    var sum = 0
    var n = n
    while(true) {
        sum += n % 10
        n = n / 10
        if n == 0 { break}
    }
    return sum
}