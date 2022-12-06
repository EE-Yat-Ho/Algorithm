import Foundation

func solution(_ dots:[[Int]]) -> Int {
    
    if Float(dots[0][0] - dots[1][0]) / Float(dots[2][0] - dots[3][0]) ==
        Float(dots[0][1] - dots[1][1]) / Float(dots[2][1] - dots[3][1]) {
        return 1
    }
    else if Float(dots[0][0] - dots[2][0]) / Float(dots[1][0] - dots[3][0]) ==
                Float(dots[0][1] - dots[2][1]) / Float(dots[1][1] - dots[3][1]) {
        return 1
    }
    else if Float(dots[0][0] - dots[3][0]) / Float(dots[1][0] - dots[2][0]) ==
                Float(dots[0][1] - dots[3][1]) / Float(dots[1][1] - dots[2][1]) {
        return 1
    }
    else {
        return 0
    }
}