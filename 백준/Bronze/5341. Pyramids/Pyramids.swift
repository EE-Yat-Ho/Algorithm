import Foundation

while let n = Int(readLine()!) {
    if n == 0 { break }
    print(f(n))
}

func f(_ n: Int) -> Int {
    if n == 1 { return 1 }
    return n + f(n - 1)
}
