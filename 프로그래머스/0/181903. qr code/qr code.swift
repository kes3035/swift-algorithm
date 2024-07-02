import Foundation

func solution(_ q:Int, _ r:Int, _ code:String) -> String {
    
    let codeArr = Array(code).map{String($0)}
    
    var resultStr = ""
    
    for i in 0..<codeArr.count {
        if i%q == r {
            resultStr += codeArr[i]
        }
    }
    
    return resultStr
}