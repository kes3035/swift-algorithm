func solution(_ numbers:[Int]) -> [Int] {
    let arr: [Int] = numbers.sorted(by: <)
    var resultArr: [Int] = []
    for i in 0..<arr.count {
        for j in (i+1)..<arr.count {
            if !resultArr.contains((arr[i]+arr[j])) {
                resultArr.append(arr[i]+arr[j])
            }
        }
    }
    return resultArr.sorted(by: <)
}