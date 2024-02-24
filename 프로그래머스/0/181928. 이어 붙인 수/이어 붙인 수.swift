import Foundation

func solution(_ num_list:[Int]) -> Int {
    var answer = 0
    var evenNum = ""
    var oddNum = ""
    for num in num_list {
        if num%2 == 0 {
            evenNum += String(num)
        } else {
            oddNum += String(num)
        }
    }
    
    answer = Int(evenNum)! + Int(oddNum)!
    
    return answer
}