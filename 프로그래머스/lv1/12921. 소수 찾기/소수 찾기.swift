func solution(_ n:Int) -> Int {
    var arr: [Bool] = Array(repeating: true, count: n + 1)
    var result: Int = 0
    arr[0] = false
    arr[1] = false
    for i in 0...n {
        if arr[i] {
            result += 1
            for j in stride(from: i * 2, through: n, by: i) {
                arr[j] = false
            }
        }
    }
    
    return result
}