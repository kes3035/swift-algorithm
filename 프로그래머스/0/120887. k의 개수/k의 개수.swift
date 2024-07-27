import Foundation

func solution(_ i:Int, _ j:Int, _ k:Int) -> Int {
    var result = 0
    for integer in i...j {
        let string_int = String(integer) ?? "0"
        let string_array = string_int.map{String($0)}
        result += string_array.filter{$0 == String(k)}.count
    }
    return result
}