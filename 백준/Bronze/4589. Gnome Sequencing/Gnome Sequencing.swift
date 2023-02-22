let n = Int(readLine()!)!
print("Gnomes:")

for i in 0..<n {
    var arr = readLine()!.split(separator: " ").map { Int($0)! }
    var isOrdered = true
    var preNum = arr[0]
    var direction = 0 // init: 0, up:1, down: 2
    arr.remove(at: 0)
    
    for num in arr {
        // up
        if preNum < num {
            if direction == 0 {
                direction = 1
            } 
            else if direction == 2 {
                isOrdered = false
                break
            }
        }
        
        // down
        else {
            if direction == 0 {
                direction = 2
            } 
            else if direction == 1 {
                isOrdered = false
                break
            }
        }
        
        preNum = num
    }
    
    print(isOrdered ? "Ordered" : "Unordered")
}