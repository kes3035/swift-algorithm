import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var i: Int = 0
    var stk: [Int] = []
    
    let lengthOfArr = arr.count
    
    while i < lengthOfArr {
        if stk.isEmpty {
            stk.append(arr[i])
            i += 1
        } else {
            if stk.last! < arr[i] {
                stk.append(arr[i])
                i += 1
            } else {
                stk.removeLast()
            }
        }
    }
    
    return stk
}