let n = readLine()!
var f = ""
var s = ""

n.enumerated().forEach {
    let num = $0.element
    
    if $0.offset == 0 {
        f.append(num)
    }
    else if $0.offset == 1 {
        if num == "0" { f.append(num) }
        else { s.append(num) }
    }
    else {
        s.append(num)
    }
}
print(Int(f)! + Int(s)!)