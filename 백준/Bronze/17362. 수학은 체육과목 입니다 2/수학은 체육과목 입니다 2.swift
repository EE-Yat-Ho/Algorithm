let n = Int(readLine()!)! % 8
// 1 2 3 4 5 6 7 0
// 1 2 3 4 5 4 3 2
if n == 0 {
    print(2)
} else if n > 5 {
    if n == 6 {
        print(4)
    } else {
        print(3)
    }
} else {
    print(n)
}