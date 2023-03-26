let arr = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
print(abs(arr[0] + arr[3] - arr[1] - arr[2]))
