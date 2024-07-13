import Foundation

func solution(_ my_string:String, _ alp:String) -> String {
    var resultStr: String = ""
    for char in my_string {
        if char == Character(alp) {
            resultStr += char.uppercased()
        } else {
            resultStr += String(char)
        }
    }
    return resultStr
}