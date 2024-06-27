import Foundation

func solution(_ n_str:String) -> String {
    var result = n_str
    for char in n_str {
        if char == "0" {
            result.removeFirst()
        } else {
            break
        }
    }
    return result
}