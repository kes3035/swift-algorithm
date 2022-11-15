let num = Int(readLine()!)!
var arr: [Int] = []
for _ in 1...num {
    let input = Int(readLine()!)!
    if input != 0 {
        arr.append(input)
    }
    else {
        arr.removeLast()
    }
    
}
print(arr.reduce(0, +))
