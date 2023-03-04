while let str = readLine() {
    if str.isEmpty { break }
    
    var answer = ""
    for char in str {
        if char == "i" {
            answer.append("e")
        } else if char == "e" {
            answer.append("i")
        } else if char == "I" {
            answer.append("E")
        } else if char == "E" {
            answer.append("I")
        } else {
            answer.append(char)
        }
    }
    print(answer)
}