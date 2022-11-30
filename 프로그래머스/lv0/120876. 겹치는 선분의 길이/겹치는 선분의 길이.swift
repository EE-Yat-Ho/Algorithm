import Foundation

func solution(_ lines:[[Int]]) -> Int {
    
    let dots = lines
        .flatMap { [($0[0], true), ($0[1], false)] }
        .sorted { $0.0 < $1.0 }
    
    var result = 0
    var nowPosition = -100
    var nowLineCount = 0
    dots.forEach {
        let position = $0.0
        let isStart = $0.1
        
        if nowLineCount > 1 {
            result += position - nowPosition
        }
        
        nowPosition = position
        
        nowLineCount += isStart ? 1 : -1
    }
    
    return result
}