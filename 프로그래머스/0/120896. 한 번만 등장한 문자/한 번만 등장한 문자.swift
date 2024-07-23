import Foundation

func solution(_ s:String) -> String {
    var stringArr = Array(s)
    var charDict: [Character: Int] = [:]
    var resultStr = ""
    for char in s {
        guard charDict[char] != nil else {
            charDict[char] = 1
            continue
        }
        charDict[char]! += 1 
    }
    
    resultStr = stringArr.filter{charDict[$0]! == 1}.sorted().map{String($0)}.joined()
    
    return resultStr
}