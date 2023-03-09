import Foundation

func canMove(_ nowCoor: String, _ preCoor: String) -> Bool {
    let nowColumn = Int(nowCoor.first!.asciiValue!)
    let nowRow = Int(nowCoor.last!.asciiValue!)
    let preColumn = Int(preCoor.first!.asciiValue!)
    let preRow = Int(preCoor.last!.asciiValue!)
    
    if abs(nowColumn - preColumn) == 2 && abs(nowRow - preRow) == 1 {
        return true
    }
    else if abs(nowColumn - preColumn) == 1 && abs(nowRow - preRow) == 2 {
        return true
    }
    else {
        return false
    }
}

// A, B, C, D, E, F
// 1, 2, 3, 4, 5, 6
var isValid = true
var dict: [String: Bool] = [:]
var preCoor = ""
var firstCoor = ""
var lastCoor = ""

for i in 0..<36 {
    let coor = readLine()!
    
    // 다녀온 곳 검증
    if dict[coor] == true {
        isValid = false
        break
    }
    dict[coor] = true
    
    // 나이트 이동패턴 검증
    if !preCoor.isEmpty {
        let isCan = canMove(coor, preCoor)
        if !isCan {
            isValid = false
            break
        }
    }
    preCoor = coor
    
    
    // 마지막 도착지 체크
    if i == 0 {
        firstCoor = coor
    }
    else if i == 35 {
        lastCoor = coor
        let isCan = canMove(lastCoor, firstCoor)
        if !isCan {
            isValid = false
            break
        }
    }
}
print(isValid ? "Valid" : "Invalid")
