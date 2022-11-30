let N = Int(readLine()!)!

for _ in 0..<N {
    let input = readLine()!.split(separator: " ")
    let A = Int(input[0])! % 10
    var B = Int(input[1])! % 4
    
    if B == 0 { B = 4 }
    
    var answer = 1
    for _ in 0..<B {
        answer = (answer * A) % 10
    }

    print(answer == 0 ? "10" : answer)
}