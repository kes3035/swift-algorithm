import Foundation

func solution(_ n:Int) -> [Int] {
    var num = n
    var result: [Int] = [n]
    while true {
        
        if num == 1 {
            break
        }
        
        if num%2 == 0 { //짝수이면
            num = num/2
            result.append(num)
        } else {        //홀수이면
            num = 3*num + 1
            result.append(num)
        }
        
        
    }
    return result
}