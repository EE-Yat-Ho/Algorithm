import Foundation

//let input = readLine()!.split(separator: " ").map { Int($0)! }

// 앞에서 몇개 빠지고, 뒤에서 몇개 빠지는지 계산.
// 뺀 갯수가 배열보다 많으면 error
// removeLast 로 뒤에꺼 다 빼고, 뒤집어서 앞에서 뺴는 만큼 또 removeLast..
// 가 아니라 배열 범위 지정해서 잘라내기 arr[n...m]

let T = Int(readLine()!)!

for _ in 1...T {
    
    let method = readLine()!
    let numCount = Int(readLine()!)!
    var arrInput = readLine()!
    arrInput.removeLast()
    arrInput.removeFirst()
    
    let arr = arrInput.split(separator: ",")
    
    var removeFirstCount = 0
    var removeLastCount = 0
    var isReversed = false
    method.forEach {
        if $0 == "R" { isReversed.toggle() }
        else {
            if isReversed { removeLastCount += 1 }
            else { removeFirstCount += 1 }
        }
    }
    
    if removeLastCount + removeFirstCount > numCount {
        print("error")
    } else {
        let f = removeFirstCount
        let l = numCount - removeLastCount
        
        var answer = arr[f..<l]
        if isReversed { answer.reverse() }
        print("[\(answer.joined(separator: ","))]")
    }
    
}