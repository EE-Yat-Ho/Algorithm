// 나이가 17세보다 많거나, 몸무게가 80kg 이상이면 성인부
while let input = readLine() {
    let arr = input.split(separator: " ")
    if arr[0] == "#" { break }
    
    let isSenior = Int(arr[1])! > 17 || Int(arr[2])! >= 80
    print("\(arr[0]) \(isSenior ? "Senior" : "Junior")")
}