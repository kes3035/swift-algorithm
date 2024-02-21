import Foundation

func solution(_ num_list:[Int]) -> Int {
    var times: Int = 1
    var sum = 0
    for integer in num_list {
        times = times * integer
        sum += integer
    }
    
    
    var sumSquare = sum*sum
    return times < sumSquare ? 1 : 0
}