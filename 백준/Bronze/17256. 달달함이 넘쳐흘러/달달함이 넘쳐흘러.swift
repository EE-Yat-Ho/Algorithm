var input = readLine()!.split(separator: " ").map { Int($0)! }
let ax = input[0]
let ay = input[1]
let az = input[2]

input = readLine()!.split(separator: " ").map { Int($0)! }
let cx = input[0]
let cy = input[1]
let cz = input[2]

let bx = cx - az
let by = cy / ay
let bz = cz - ax
print("\(bx) \(by) \(bz)")