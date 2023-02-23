// 0.167
// Objects weighing x on Earth will weigh x' on the moon.

while let weight = Double(readLine()!) {
    if weight < 0.0 { break }
    
    let earthPrefix = Int(weight)
    let earthSuffix = Int(weight * 100.0) % 100
    
    let moonPrefix = Int(weight * 0.167)
    let moonSuffix = Int(weight * 100.0 * 0.167) % 100
    
    print("Objects weighing \(earthPrefix).\(earthSuffix < 10 ? "0\(earthSuffix)" : "\(earthSuffix)") on Earth will weigh \(moonPrefix).\(moonSuffix < 10 ? "0\(moonSuffix)" : "\(moonSuffix)") on the moon.")
}