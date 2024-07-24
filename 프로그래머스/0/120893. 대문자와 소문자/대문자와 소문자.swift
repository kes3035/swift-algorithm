import Foundation

func solution(_ my_string:String) -> String {
    var result = ""
    for char in my_string {
        if char.isLowercase {
            result += String(char).uppercased()
        } else {
            result += String(char).lowercased()
        }
    }
    return result
}