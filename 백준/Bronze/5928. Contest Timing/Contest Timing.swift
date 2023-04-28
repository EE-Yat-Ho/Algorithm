let arr = readLine()!.split(separator: " ").map { Int($0)! }
var answer = (arr[0] - 11) * 1440
answer += (arr[1] - 11) * 60
answer += (arr[2] - 11)
print(answer < 0 ? -1 : answer)