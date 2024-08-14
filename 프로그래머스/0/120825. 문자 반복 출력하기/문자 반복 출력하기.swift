import Foundation

func solution(_ my_string:String, _ n:Int) -> String {
    let my_string_arr = my_string.map{String($0)}
    var result = ""
    var index = 0
    while result.count < my_string.count * n {
        result += my_string_arr[index]
        guard result.count%n != 0 else { index += 1; continue }

    }
    return result
}