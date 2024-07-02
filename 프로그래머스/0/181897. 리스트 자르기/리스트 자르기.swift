import Foundation

func solution(_ n:Int, _ slicer:[Int], _ num_list:[Int]) -> [Int] {
    let a = slicer[0]
    let b = slicer[1]
    let c = slicer[2]
    
    var result: [Int] = []
    
    switch n {
    case 1:
        result = Array(repeating: 0, count: b-1)
        result[0...] = num_list[0...b]
    case 2:
        result = Array(repeating: 0, count: num_list.count - a)
        result[0...] = num_list[a...]
    case 3:
        result = Array(repeating: 0, count: b-a)
        result[0...] = num_list[a...b]
    case 4:
        for i in stride(from: a, through: b, by: c) {
            result.append(num_list[i])
        }
    default:
        break
    }
    return result
}