import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var resultArr = arr
    for i in 0..<resultArr.count {
        if resultArr[i]%2 == 0 && resultArr[i] >= 50 {
            resultArr[i] = resultArr[i]/2
        } else if resultArr[i]%2 != 0 && resultArr[i] <= 50 {
            resultArr[i] = resultArr[i]*2
        } else {
            continue
        }
    }
    
    return resultArr
}