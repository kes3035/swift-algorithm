let fromNum = Int(readLine()!)!
let toNum = Int(readLine()!)!
var numArr: [Int] = [Int]()



func getNum(_ input: Int) -> Bool {
    var result = false
    var num = input
    while true {60
        
        for i in 1...100 {
            if num == i*i {
                result = true
            }
        }
        break
    }
    return result
}




for i in stride(from: fromNum, through: toNum, by: 1) {
    if getNum(i) {
        numArr.append(i)
    }
}
if numArr.count >= 1 {
    print(numArr.reduce(0, +))
    print(numArr.sorted(by: <)[0])
}
else {
    print("-1")
}

