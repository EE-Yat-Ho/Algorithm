let n = Int(readLine()!)!

for _ in 0..<n {
    let cnt = readLine()!.count
    print(cnt > 5 && cnt < 10 ? "yes" : "no")
}