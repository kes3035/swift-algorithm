import Foundation

func solution(_ numLog:[Int]) -> String {
    let nums: [Int : String] = [1 : "w", -1 : "s", 10 : "d", -10 : "a"]
    var result = ""
    for i in 0..<numLog.count - 1 {
        result += nums[numLog[i+1] - numLog[i]]!
    }
    
    return result
}