import Foundation

// 실제로 2진 트리를 만든다?
// 안됨..1자로 쭉 있으면 2^10000 크기의 배열이 가능함..

// 전위순회의 성질을 이용.
// 첫 원소가 root. 나보다 큰 애가 나오기 전까지는 다 left. 이후 다 right.
// 오른쪽으로 내려가면서 만나는 애들 append. 뒤집으면 후위순회 결과가됨.
// 오른쪽이 없다? 그냥 왼쪽

// 어디까지 탐색할 것인지. 부모의 idx를 줘야함.
// 오른쪽으로 들어가는 경우, 내 부모의 idx
// 왼쪽으로 들어가는 경우, 오른쪽 root 의 idx

var arr: [Int] = []
while let input = readLine() {
    if let n = Int(input) {
        arr.append(n)
    } else {
        break
    }
}

var answer: [Int] = []

dfs(0, arr.count)

func dfs(_ idx: Int, _ parentIdx: Int) {
    
    let root = arr[idx]
    answer.append(root)
    
    var rightRootIdx = parentIdx
    for i in idx..<parentIdx {
        if arr[i] > root {
            dfs(i, parentIdx)
            rightRootIdx = i
            break
        }
    }
    
    if idx + 1 < arr.count, arr[idx + 1] < root {
        dfs(idx + 1, rightRootIdx)
    }
    
}

//print(arr)
//print(answer)
print(answer.reversed().map { "\($0)" }.joined(separator: "\n"))
