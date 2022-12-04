func solution(_ array:[Int]) -> [Int] {
    var resultArr: [Int] = []
    resultArr.append(array.max()!)
    resultArr.append(array.firstIndex(of: array.max()!)!)
    
    return resultArr
}