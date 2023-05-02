let arr = readLine()!.split(separator: " ").map { Int($0)! }
print(arr[0] - abs(arr[1] - arr[2]) )