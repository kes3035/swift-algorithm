import Foundation

func solution(_ n:Int) -> Int {
    var numSet: [Int: Int] = [:]
    for i in 1...n {
        guard n%i == 0 else { continue }
        numSet[i] = n/i
    }
    
    
    
    return numSet.count
}