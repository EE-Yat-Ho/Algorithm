// 각 점을 어떤 점이랑 이어야 최소값일지..
// 한 점으로 다 모은다..? X
// 무조건 가까운 점끼리 이어준다..? X
// 흠.. x, y, 방향까지 정해야하기에 골든 로직을 찾기 힘듦
// N이 20이므로 브루트포스 진행

// 벡터 10개 찾기.
// 그냥 점 20개를 배치하면, 20C19.. 너무 크다.

// 벡터의 합은, 시작점들의 합과 도착점들의 합과 같다.
// (2, 2) -1, -1 -> 1, 1
// + (-1, 1) 5, 5 -> 4, 6
// = (1, 3) 4, 4 -> 5, 7

// 점 20개 중에 시작점 10개만 뽑으면 된다. 20C10
// 시작점 10개의 x, y 를 합한 점. 도착점 10개의 x, y 를 합한 점 사이의 벡터의 길이.

import Foundation

let T = Int(readLine()!)!

for _ in 0..<T {
    
    let N = Int(readLine()!)!
    var answer = Double.infinity
    var dots: [(Int,Int)] = []
    
    // 점 읽기
    for _ in 0..<N {
        let input = readLine()!.split(separator: " ")
        dots.append((Int(input[0])!, Int(input[1])!))
    }
    
    // 점 10개 뽑기
    var startDotIdxs: [Bool] = Array(repeating: false, count: N)
    
    DFS(nowIdx: 0, startDotCnt: 0)
    
    //  내가 시작점일 때 밑으로 탐색. 끝나면 시작점에서 제거하고 위로.
    func DFS(nowIdx: Int, startDotCnt: Int) {
        
        // 종료조건 : 시작점이 10개면 값 구하고 리턴
        if startDotCnt == N / 2 {
            let distance = getDistance()
            if answer > distance { answer = distance }
            return
        }
        
        // 시작점이 아직 모자라면.
        for i in nowIdx..<N {
            // 현재 점을 시작점으로 지정 후 밑으로 탐색.
            startDotIdxs[i] = true
            DFS(nowIdx: i + 1, startDotCnt: startDotCnt + 1)
            
            // 탐색 후, 시작점에서 제거 후 위로.
            startDotIdxs[i] = false
        }
    }
    
    func getDistance() -> Double {
        var startDot = (0, 0)
        var endDot = (0, 0)
        
        startDotIdxs.enumerated().forEach {
            if $0.element {
                // 시작점이다
                startDot = (startDot.0 + dots[$0.offset].0, startDot.1 + dots[$0.offset].1)
            } else {
                // 도착점이다
                endDot = (endDot.0 + dots[$0.offset].0, endDot.1 + dots[$0.offset].1)
            }
        }
        
        let xDistance = endDot.0 - startDot.0
        let yDistance = endDot.1 - startDot.1
        
        return sqrt(Double(xDistance * xDistance + yDistance * yDistance))
    }
    
    print(answer)
}