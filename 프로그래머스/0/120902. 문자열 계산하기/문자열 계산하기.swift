import Foundation

func solution(_ my_string:String) -> Int {
    let string = my_string.split(separator: " ").map{String($0)}
    var result = 0
    for i in 0..<string.endIndex {
        guard i != 0 else { 
            result += Int(string[i]) ?? 0
            continue
        }
        guard let integer = Int(string[i]) else { continue }
        if string[i-1] == "+" {
            result += Int(string[i]) ?? 0
        } else {
            result -= Int(string[i]) ?? 0
        }
    }
    return result
}