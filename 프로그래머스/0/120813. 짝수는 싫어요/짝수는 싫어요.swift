import Foundation

func solution(_ n:Int) -> [Int] {
    var result: [Int] = []
    for i in stride(from: 1, through: n, by: 2) {
        result.append(i)
    }
    return result
}