import Foundation

func solution(_ start_num:Int, _ end_num:Int) -> [Int] {
    var result: [Int] = []
    
    for i in stride(from: start_num,through: end_num,by: -1) {
        result.append(i)
    }
    
    return result
}