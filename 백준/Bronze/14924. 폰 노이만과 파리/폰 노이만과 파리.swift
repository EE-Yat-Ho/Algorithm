let arr = readLine()!.split(separator: " ").map{ Int($0)! }
let h = arr[2] / (arr[0] * 2)
print(h * arr[1])