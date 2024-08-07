import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var i = 0
    var stk: [Int] = []
    while i < arr.count {
        if stk.isEmpty {
            stk.append(arr[i])
            i += 1
        } else if !stk.isEmpty && stk.last! == arr[i] {
            stk.removeLast()
            i += 1
        } else {
            stk.append(arr[i])
            i += 1 
        }
    }
    
    return stk.isEmpty ? [-1] : stk
}