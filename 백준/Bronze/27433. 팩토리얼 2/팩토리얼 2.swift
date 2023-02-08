let n = Int(readLine()!)!
print(f(n))
func f(_ n: Int) -> Int { 
    if n == 1 || n == 0 { return 1 }
    else { return n * f(n - 1) }
}