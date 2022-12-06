func solution(_ left:Int, _ right:Int) -> Int {
    var result = 0
    for i in stride(from: left, through: right, by: 1) {
        let num = i
        var arr: [Int] = []
        
        for j in 1...num {
            if num%j == 0 {
                arr.append(j)
            }
        }
            if arr.count%2 == 0 {
                result += num
            }
            else if arr.count%2 != 0 {
                result -= num
            }
        arr = []
        }
    

    return result
}