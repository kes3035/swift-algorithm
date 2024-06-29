import Foundation

func solution(_ my_strings:[String], _ parts:[[Int]]) -> String {
    var resultStr: String = ""
    let count = my_strings.count
    for i in 0..<count {
        let strArr = Array(my_strings[i])
        let part = parts[i]
        let partialStr = strArr[part[0]...part[1]].map{String($0)}.joined()
        resultStr += partialStr
        
    }
    return resultStr
}