var answer = 0
while let input = readLine() {
    answer = 0
    if input == "#" { break }
    input.forEach {
        if $0 == "a" || $0 == "e" || $0 == "i" || $0 == "o" || $0 == "u" {
            answer += 1
        }
        else if $0 == "A" || $0 == "E" || $0 == "I" || $0 == "O" || $0 == "U" {
            answer += 1
        } 
    }
    print(answer)
}