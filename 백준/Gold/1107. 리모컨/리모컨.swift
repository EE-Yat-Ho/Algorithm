import Foundation

let N = Int(readLine()!)!
let M = Int(readLine()!)!

var isValid = Array(repeating: true, count: 10)
if M > 0 {
    readLine()!.split(separator: " ").forEach { isValid[Int($0)!] = false }
}

// 모두 +- 로만 움직였을 때
let maxAnswer = abs(N - 100)

// 번호를 이동했을 때, 이것보다 큰 범위면, maxAnswer 이 정답
let maxNum = N + maxAnswer - countOfDigit(N + maxAnswer)
var minNum = 0


var numPiece = [0, 0, 0, 0, 0, 0, 0]

var num = N
var answer = maxAnswer


// 위로 체크
num = minNum // N
setUpNum()
while num <= maxNum {
    // 지금 num 체크
    let cnt = abs(N - num) + countOfDigit(num)
    if cnt < answer {
        answer = cnt
    }
    
    // 다음 num 셋팅
    num += 1
    setUpNum()
}

print(answer)

func countOfDigit(_ number: Int) -> Int {
    var num = number
    if num == 0 { return 1 }
    var count: Int = 0
    while num > 0 {
        num /= 10
        count += 1
    }
    return count
}

func numToPiece(_ num: Int) {
    var n = num
    numPiece[6] = n / 1000000
    n %= 1000000
    numPiece[5] = n / 100000
    n %= 100000
    numPiece[4] = n / 10000
    n %= 10000
    numPiece[3] = n / 1000
    n %= 1000
    numPiece[2] = n / 100
    n %= 100
    numPiece[1] = n / 10
    n %= 10
    numPiece[0] = n
}


func setUpNum() {
    while true {
        numToPiece(num)
        if num > maxNum { break }
        if num > 999999, !isValid[numPiece[6]] {
            num += 1000000
        } else if num > 99999, !isValid[numPiece[5]] {
            num += 100000
        } else if num > 9999, !isValid[numPiece[4]] {
            num += 10000
        } else if num > 999, !isValid[numPiece[3]] {
            num += 1000
        } else if num > 99, !isValid[numPiece[2]] {
            num += 100
        } else if num > 9, !isValid[numPiece[1]] {
            num += 10
        } else if !isValid[numPiece[0]] {
            num += 1
        } else {
            break
        }
    }
}
