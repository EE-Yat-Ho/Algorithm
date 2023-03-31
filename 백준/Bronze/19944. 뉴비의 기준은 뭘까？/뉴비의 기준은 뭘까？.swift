let arr = readLine()!.split(separator: " ").map { Int($0)! }
let n = arr[0]
let m = arr[1]

if m == 1 || m == 2 { print("NEWBIE!") }
else if n >= m { print("OLDBIE!") }
else { print("TLE!")}
