_ = readLine()
print(readLine()!.filter {
    $0 == "a" || $0 == "e" || $0 == "i" || $0 == "o" || $0 == "u"
}.count)