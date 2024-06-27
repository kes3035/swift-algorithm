import Foundation

func solution(_ num_str:String) -> Int {
    var result: Int = 0
    for char in num_str {
        let num = Int(String(char))!
        result += num
    }
    return result
}