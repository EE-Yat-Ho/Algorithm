import Foundation

let f = FileIO()
let M = f.readInt()

var arr = Array(repeating: false, count: 21)
var answer = ""

for _ in 0..<M {
    let op = f.readStirngSum()
    
    switch op {
    case 297:
        arr[f.readInt()] = true
    case 654:
        arr[f.readInt()] = false
    case 510:
        answer.append("\(arr[f.readInt()] ? 1 : 0)\n")
    case 642:
        arr[f.readInt()].toggle()
    case 313:
        arr = Array(repeating: true, count: 21)
    case 559:
        arr = Array(repeating: false, count: 21)
    default:
        break
    }
}

print(answer)


final class FileIO {
    
    @inline(__always) private var buffer: [UInt8] = Array(FileHandle.standardInput.readDataToEndOfFile()) + [0], byteIdx = 0
        
    @inline(__always) private func readByte() -> UInt8 {
        defer { byteIdx += 1 }
        return buffer.withUnsafeBufferPointer { $0[byteIdx] }
    }
    
    @inline(__always) func readInt() -> Int {
        var number = 0, byte = readByte(), isNegative = false
        while byte == 10 || byte == 32 { byte = readByte() } // 공백과 줄바꿈 무시
        if byte == 45 { byte = readByte(); isNegative = true } // 음수 처리
        while 48...57 ~= byte { number = number * 10 + Int(byte - 48); byte = readByte() }
        return number * (isNegative ? -1 : 1)
    }
    
    @inline(__always) func readStirngSum() -> Int {
        var byte = readByte()
        while byte == 10 || byte == 32 { byte = readByte() }
        var sum = Int(byte)
        while byte != 10 && byte != 32 && byte != 0 { byte = readByte(); sum += Int(byte) }
        return sum - Int(byte)
    }
    
    @inline(__always) private func write(_ output: String) {
        FileHandle.standardOutput.write(output.data(using: .utf8)!)
    }
}
