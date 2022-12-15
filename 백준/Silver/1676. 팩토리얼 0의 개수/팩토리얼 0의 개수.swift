// 틀린답
// 1 2 3 4     5        6  7     8     9     10
//1 1 2 6 24->4 20->2 12->2 14->4 32->2 18->8  80->8
//0 0 0 0   0     1     1     1     1     1      2

//let N = Int(readLine()!)!
//
//// (num, answer)
//var arr: [(Int, Int)] = Array(repeating: (0, 0), count: 501)
//
//arr[0] = (1, 0)
//
//for i in 1...500 {
//
//    var num = arr[i - 1].0 * (i % 10)
//    var answer = arr[i - 1].1
//
//    while true {
//        if num % 10 == 0 {
//            answer += 1
//            num /= 10
//        } else {
//            // num %= 10
//            break
//        }
//    }
//
//    arr[i].0 = num
//    arr[i].1 = answer
//}
//
//print(arr[N].1)

// 정답
// 소인수분해 했을 때 10( == 2*5) 의 갯수
// 무조건 2보다 5가 많으므로, 5의 갯수를 세면 그것이 정답

let N = Int(readLine()!)!

var answer = 0
for i in 0...N {
    
    var temp = i
    while temp > 0, temp % 5 == 0 {
        answer += 1
        temp /= 5
    }
}
print(answer)
