import Foundation

func solution(_ rank:[Int], _ attendance:[Bool]) -> Int {
    var studentDict: [Int: Int] = [:]
    var result: [Int] = []
    for i in 0...(rank.endIndex - 1) {
        guard attendance[i] else { continue }
        studentDict[rank[i]] = i
    }
    studentDict.keys.sorted(by: <).map{Int($0)}[0...2].map{Int($0)}.forEach { rank in
        result.append(studentDict[rank]!)
    }
    
    return 10000*result[0] + 100*result[1] + result[2]
}