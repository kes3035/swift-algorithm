import Foundation

func solution(_ my_string:String) -> String {
    var my_arr = my_string.map{String($0)}
    var result = ""
    for str in my_arr {
        guard str != "a" && str != "e" && str != "i" && str != "o" && str != "u" else { continue }
        result += str
    }
    return result
}