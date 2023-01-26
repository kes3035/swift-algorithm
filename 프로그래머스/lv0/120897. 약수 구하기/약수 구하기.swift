import Foundation

func solution(_ n:Int) -> [Int] {
    var arr: [Int] = []
    for i in 1...n {
        for j in 1...i {
            if n%j == 0 && !arr.contains(j) {
                arr.append(j)
            }
        }
    }
    return arr
}