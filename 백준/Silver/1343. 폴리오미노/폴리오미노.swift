let str = readLine()!
var answer = ""
var isCan = true
var streak = 0
str.forEach {
    if $0 == "X" {
        streak += 1
        if streak == 4 {
            streak = 0
            answer.append("AAAA")
        }
    }
    else if $0 == "." {
        if streak == 4 {
            // A
            streak = 0
            answer.append("AAAA")
        }
        else if streak == 2 {
            // B
            streak = 0
            answer.append("BB")
        }
        else if streak == 0 {
            // pass
        }
        else {
            isCan = false
        }
        answer.append(".")
    }
}

let diff = str.count - answer.count
if diff == 4 { answer.append("AAAA") }
else if diff == 2 { answer.append("BB") }
else if diff == 0 {}
else { isCan = false }

print(isCan ? answer : -1)