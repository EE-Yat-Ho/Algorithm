while true {
    var n = Int(readLine()!)!
    if n == 0 { break }
    
    var answer = 1
    while true {
        let num = n % 10
        n /= 10
        switch num {
        case 0:
            answer += 5
        case 1:
            answer += 3
        default:
            answer += 4
        }
        
        if n < 1 { break }
    }
    
    print(answer)
}