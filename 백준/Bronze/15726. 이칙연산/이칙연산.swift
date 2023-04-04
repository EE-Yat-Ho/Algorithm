let arr = readLine()!.split(separator: " ").map { Int($0)! }
if arr[1] > arr[2] {
    print(arr[0] * arr[1] / arr[2])
} else {
    print(arr[0] * arr[2] / arr[1] )
}