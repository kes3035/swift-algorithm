import Foundation

func solution(_ arr:[Int], _ k:Int) -> [Int] {
    var resultArr = arr
    for i in 0..<arr.endIndex {
        if k%2 == 0 {
            resultArr[i] += k
        } else {
            resultArr[i] *= k
        }
    }
    return resultArr
}