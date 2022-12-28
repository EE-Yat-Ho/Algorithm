import Foundation

// 1 -> v1 -> v2 -> N
// v1 다익스트라, v2 다익스트라
// v1~v2 + min(v1~1 + v2~N, v1~N + v2~1)

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0] // 점 갯수
let E = input[1] // 간선 갯수

var lineArr: [[(Int, Int)]] = Array(repeating: [], count: N + 1) // arr[시작점] = [도착점, 가중치]

for _ in 0..<E {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let start = input[0]
    let end = input[1]
    let weight = input[2]
    
    lineArr[start].append((end, weight))
    lineArr[end].append((start, weight))
}

let input2 = readLine()!.split(separator: " ").map { Int($0)! }
let v1 = input2[0]
let v2 = input2[1]


// v1 다익스트라
var minHeap = MinHeap<IdxAndWeight>(IdxAndWeight(idx: v1, weight: 0))
var v1DijkstraArr = Array(repeating: Int.max, count: N + 1)
v1DijkstraArr[v1] = 0

while !minHeap.isEmpty {

    let data = minHeap.pop()!
    let idx = data.idx
    let weight = data.weight

    // 최소값이 아니면 스킵
    if v1DijkstraArr[idx] < weight { continue }

    lineArr[idx].forEach {

        let startIdx = idx
        let endIdx = $0.0
        let weight = v1DijkstraArr[startIdx] + $0.1

        if v1DijkstraArr[endIdx] > weight {
            v1DijkstraArr[endIdx] = weight
            minHeap.insert(IdxAndWeight(idx: endIdx, weight: weight))
        }
    }
}

// v2 다익스트라
minHeap.insert(IdxAndWeight(idx: v2, weight: 0))
var v2DijkstraArr = Array(repeating: Int.max, count: N + 1)
v2DijkstraArr[v2] = 0

while !minHeap.isEmpty {

    let data = minHeap.pop()!
    let idx = data.idx
    let weight = data.weight

    // 최소값이 아니면 스킵
    if v2DijkstraArr[idx] < weight { continue }

    lineArr[idx].forEach {

        let startIdx = idx
        let endIdx = $0.0
        let weight = v2DijkstraArr[startIdx] + $0.1

        if v2DijkstraArr[endIdx] > weight {
            v2DijkstraArr[endIdx] = weight
            minHeap.insert(IdxAndWeight(idx: endIdx, weight: weight))
        }
    }
}

if v1DijkstraArr[1] == Int.max ||
    v1DijkstraArr[v2] == Int.max ||
    v1DijkstraArr[N] == Int.max {
    print(-1)
} else {
    let answer = v1DijkstraArr[v2] + min(v1DijkstraArr[1] + v2DijkstraArr[N], v1DijkstraArr[N] + v2DijkstraArr[1])
    print(answer)
}


struct IdxAndWeight: Comparable {

    static func < (lhs: IdxAndWeight, rhs: IdxAndWeight) -> Bool {
        lhs.weight < rhs.weight
    }

    let idx: Int
    let weight: Int

    init(idx: Int, weight: Int) {
        self.idx = idx
        self.weight = weight
    }
}


// MARK: - 최소힙

struct MinHeap<T: Comparable> {

    var heap: [T] = []
    var isEmpty: Bool { heap.count < 2 }

    init(_ e: T) {
        heap.append(contentsOf: [e, e]) // 0번 index 채우기 + Root Node 채우기
    }

    mutating func insert(_ e: T) {

        guard !heap.isEmpty else {
            heap.append(contentsOf: [e, e])
            return
        }

        heap.append(e)

        func _needMoveUp(_ insertIdx: Int) -> Bool {
            if insertIdx < 2 { return false }  // Root

            let parentIdx = insertIdx / 2
            return heap[insertIdx] < heap[parentIdx] ? true : false
        }

        // 필요하면 쭉 올라가기
        var insertIdx = heap.count - 1
        while _needMoveUp(insertIdx) {
            let parentIdx = insertIdx / 2
            heap.swapAt(insertIdx, parentIdx)
            insertIdx = parentIdx
        }
    }

    enum DownType { case left, right, none }

    mutating func pop() -> T? {
        if heap.count < 2 { return nil } // 1개면 없는 거

        let minResult = heap[1] // 맨 위에꺼 고정
        heap.swapAt(1, heap.count - 1) // 맨 밑에꺼 Root 로 가져오고
        heap.removeLast() // 꺼낸 데이터는 삭제

        func _moveDown(_ poppedIdx: Int) -> DownType {
            let leftChildIdx = poppedIdx * 2
            let rightChildIdx = leftChildIdx + 1

            // 1. 자식이 없는 경우. 왼쪽부터 채워지는 완전이진트리기에, 왼쪽이 없으면 자식이 없는 것.
            if leftChildIdx >= heap.count {
                return .none
            }

            // 2. 왼쪽 자식만 있는 경우.
            // 자식과 비교해서 내가 크면 왼쪽 밑으로
            if rightChildIdx >= heap.count {
                return heap[leftChildIdx] < heap[poppedIdx] ? .left : .none
            }

            // 3. 양쪽 다 있는 경우
            // 내가 제일 작은 경우 ok
            if (heap[leftChildIdx] > heap[poppedIdx]) && (heap[rightChildIdx] > heap[poppedIdx]) {
                return .none
            }

            // 내가 제일 큰 경우. 자식들 중에 더 작은놈이랑 바꾸기
            if (heap[leftChildIdx] < heap[poppedIdx]) && (heap[rightChildIdx] < heap[poppedIdx]) {
                return heap[leftChildIdx] < heap[rightChildIdx] ? .left : .right
            }

            // 안쪽만 나보다 작은 경우, 그놈과 바꾸기
            if (heap[leftChildIdx] < heap[poppedIdx]) || (heap[rightChildIdx] < heap[poppedIdx]) {
                return heap[leftChildIdx] < heap[rightChildIdx] ? .left : .right
            }

            return .none
        }

        // 올라온 데이터 쭉 내리기
        var poppedIdx = 1
        while true {
            switch _moveDown(poppedIdx) {
            case .none:
                return minResult
            case .left:
                let leftChildIdx = poppedIdx * 2
                heap.swapAt(poppedIdx, leftChildIdx)
                poppedIdx = leftChildIdx
            case .right:
                let rightChildIdx = (poppedIdx * 2) + 1
                heap.swapAt(poppedIdx, rightChildIdx)
                poppedIdx = rightChildIdx
            }
        }
    }
}
