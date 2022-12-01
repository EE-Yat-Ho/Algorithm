let N = Int(readLine()!)!
var answer: [String.Element] = []

for _ in 0..<N {
    
    let input = readLine()!
    
    if answer.isEmpty { answer = input.map{$0} }
    
    input.enumerated().forEach {
        let inputChar = $0.element
        let answerChar = answer[$0.offset]
        
        if answerChar == "?" { return }
        
        if inputChar != answerChar {
            answer[$0.offset] = "?"
        }
    }
}

print(answer.reduce("", { "\($0)\($1)" } ) )