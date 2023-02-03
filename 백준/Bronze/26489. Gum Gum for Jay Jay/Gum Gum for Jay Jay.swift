var answer = 0
while let input = readLine() {
    if input.hasPrefix("gum") { answer += 1}
    else { break }
}
print(answer)
