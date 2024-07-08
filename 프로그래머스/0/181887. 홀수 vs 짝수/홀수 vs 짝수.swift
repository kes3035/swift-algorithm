import Foundation

func solution(_ num_list:[Int]) -> Int {
    var evenNum: Int = 0
    var oddNum: Int = 0
    
    for i in 0..<num_list.count {
        if i%2 == 0 {
            oddNum += num_list[i]
        } else {
            evenNum += num_list[i]
        }
    }
    
    return max(evenNum, oddNum)
}