import Foundation

func solution(_ cipher:String, _ code:Int) -> String {
    let cipher = cipher.map{String($0)}
    var resultStr = ""
    for i in 0..<cipher.endIndex {
        guard (i+1)%code == 0 else { continue }
        resultStr += cipher[i]
    }
    return resultStr
}