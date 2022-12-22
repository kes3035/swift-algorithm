func solution(_ x:Int, _ n:Int) -> [Int64] {
    var result: [Int64] = []
    for i in stride(from: 0 ,through: n - 1 ,by: 1) {
        result.append(Int64(x+x*(i)))
    }
    return result
}