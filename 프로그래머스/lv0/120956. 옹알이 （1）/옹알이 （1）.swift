import Foundation

func solution(_ babbling:[String]) -> Int {
    babbling.filter {
        var targetString: String = $0
        var result = true
        
        ["aya", "ye", "woo", "ma"].forEach {
            if let range = targetString.range(of: $0) {
                targetString.replaceSubrange(range, with: " ")   
            }
        }
        
        targetString.forEach { char in
            if char != " " {
                result = false
            }
        }
        
        return result
    }.count
}