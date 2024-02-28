import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    var result = num_list
    let index = num_list.count - 1
    if result[index] > result[index - 1] {
        result.append( result[index] - result[index - 1])
    }  else { result.append(result[index] * 2) }
    return result
}