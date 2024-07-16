import Foundation

func solution(_ arr:[Int], _ flag:[Bool]) -> [Int] {
    var X: [Int] = []
    for i in 0..<arr.count {
        guard flag[i] else { 
            let countOfX = X.count
            X.removeSubrange((countOfX-arr[i])...)
            continue
        }
        let newArr = Array(repeating: arr[i], count: arr[i]*2)
        X += newArr
    }
    return X
}