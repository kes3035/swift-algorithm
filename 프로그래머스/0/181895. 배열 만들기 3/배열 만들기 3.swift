import Foundation

func solution(_ arr:[Int], _ intervals:[[Int]]) -> [Int] {
    var result: [Int] = []
    
    let s1 = intervals[0][0]
    let e1 = intervals[0][1]
    
    let s2 = intervals[1][0]
    let e2 = intervals[1][1]
    
    let firstArr = arr[s1...e1].map{Int($0)}
    
    let secondArr = arr[s2...e2].map{Int($0)}
    
    result += firstArr
    result += secondArr
    
    return result
}