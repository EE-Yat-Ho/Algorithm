let answer = readLine()!
let arr = readLine()!.split(separator: " ")
print(arr.filter{ $0 == answer }.count)