import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [[Int]] {
    var result: [[Int]] = []
    var temporaryArr: [Int] = []
    
    var i = 0
    
    while true {
        if result.count == num_list.count/n {
            break
        }
        if temporaryArr.count == n {
            result.append(temporaryArr)
            temporaryArr = []
            continue
        }
        temporaryArr.append(num_list[i])
        i += 1
        
        
    }
    
    return result
}