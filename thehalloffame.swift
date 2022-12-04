func solution(_ k:Int, _ score:[Int]) -> [Int] {
    var resultArr: [Int] = []
    var someArr: [Int] = []
    for i in 0..<score.count {
        someArr.append(score[i])
        someArr.sort(by: >)
        if i < k {
            resultArr.append(someArr.last!)
        }
        else if i >= k {
            resultArr.append(someArr[k-1])
        }
    }
    
    return resultArr
}
