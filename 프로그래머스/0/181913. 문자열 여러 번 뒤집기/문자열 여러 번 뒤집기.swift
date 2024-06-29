import Foundation

func solution(_ my_string:String, _ queries:[[Int]]) -> String {
    var reversedStr = my_string.map{String($0)}
    for query in queries {
        let startIdx = query[0]
        let endIdx = query[1]
        let reversedPartialStr = reversedStr[startIdx...endIdx].reversed().map{String($0)}
        reversedStr[startIdx...endIdx] = reversedPartialStr[0...reversedPartialStr.count-1]
        
        
    }
    return reversedStr.joined()
}