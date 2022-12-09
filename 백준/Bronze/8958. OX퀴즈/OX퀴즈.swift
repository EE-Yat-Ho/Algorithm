
let N = Int(readLine()!)!

for _ in 0..<N {
    var score = 0
    var hit = 0
    readLine()!.forEach {
        if $0 == "O" {
            hit += 1
            score += hit
        }
        else if $0 == "X" {
            hit = 0
        }
    }
    print(score)
}
