import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var resultArr: [Int] = []
    for int in arr {
        let nCountArr: [Int] = Array(repeating: int, count: int)
        resultArr += nCountArr
    }
    return resultArr
}