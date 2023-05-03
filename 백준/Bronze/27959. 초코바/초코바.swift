let arr = readLine()!.split(separator: " ").map { Int($0)! }
print(arr[0]*100 >= arr[1] ? "Yes" : "No")