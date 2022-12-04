func solution(_ n:Int, _ numlist:[Int]) -> [Int] {
    var resultArr: [Int] = []
    for i in 0..<numlist.count {
        guard numlist[i]%n == 0 else {continue}
        resultArr.append(numlist[i])
    }
    return numlist
}