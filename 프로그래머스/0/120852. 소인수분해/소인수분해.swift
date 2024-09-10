import Foundation

func solution(_ n:Int) -> [Int] {
    var result: [Int] = []
    var num = n
    var i = 2
    while i <= num {
        if num%i == 0 {
            if !result.contains(i) {
                result.append(i)
            }
            num = num/i
        } else {
            i += 1
            continue
        }
    }
    return result
}