import Foundation

func solution(_ arr:[Int], _ k:Int) -> [Int] {
    var resultArr: [Int] = []
    for element in arr {
        guard resultArr.count < k else { break }
        if !resultArr.contains(element) {
            resultArr.append(element)
        }
    }
    if resultArr.count < k {
        let arr = Array(repeating: -1, count: k-resultArr.count)
        resultArr += arr
    }
    return resultArr
}