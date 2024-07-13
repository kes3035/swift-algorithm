import Foundation

func solution(_ myString:String) -> String {
    var resultStr = ""
    for char in myString {
        if char == "a" || char == "A" {
            resultStr += "A"
        } else {
            resultStr += char.lowercased()
        }
    }
    return resultStr
}