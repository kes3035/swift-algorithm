import Foundation

func solution(_ myString:String, _ pat:String) -> Int {
    let myStr = myString.uppercased()
    let patStr = pat.uppercased()
    return myStr.contains(patStr) ? 1 : 0
}