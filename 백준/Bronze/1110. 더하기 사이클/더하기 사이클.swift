
let N = Int(readLine()!)!

var answer = 0
var oriNum = N
var addNum = 0
while (true) {
    addNum = (oriNum / 10) + (oriNum % 10)
    oriNum = ((oriNum % 10) * 10) + (addNum % 10)
    answer += 1
    if oriNum == N {
        print(answer)
        break
    }
}

