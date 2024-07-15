import Foundation

func solution(_ myString:String, _ pat:String) -> Int {
    var swappedStr = ""
    for char in myString {
        if char == "A" {
            swappedStr += "B"
        } else {
            swappedStr += "A"
        }
    }
    
    return swappedStr.contains(pat) ? 1 : 0
}