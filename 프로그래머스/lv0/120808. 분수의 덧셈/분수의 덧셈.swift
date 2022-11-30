import Foundation

func solution(_ denum1:Int, _ num1:Int, _ denum2:Int, _ num2:Int) -> [Int] {
    
    let num = lcm(num1, num2)
    let denum = (denum1 * num / num1) + (denum2 * num / num2 )
    
    let g = gcd(denum, num)
    
    return [denum / g, num / g]
}

func gcd(_ a: Int, _ b: Int) -> Int{
    if (b == 0) { return a }
    return gcd(b, a % b)
}

func lcm(_ a: Int, _ b: Int) -> Int {
    return a * b / gcd(a, b)
}
