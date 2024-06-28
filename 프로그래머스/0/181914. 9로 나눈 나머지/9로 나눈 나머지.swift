import Foundation

func solution(_ number:String) -> Int {
    var result = 0
    for char in number {
        let num = Int(String(char))!
        result += num
    }
    return result%9
}