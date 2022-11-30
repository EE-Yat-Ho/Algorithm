let N = Int(readLine()!)!

for _ in 0..<N {
    let input = readLine()!.split(separator: " ")
    let A = Int(input[0])!
    let B = Int(input[1])!
    
    var answer = A % 10
    for _ in 1..<B {
        answer = (answer * A) % 10
    }
     
    print(answer == 0 ? "10" : answer)
}