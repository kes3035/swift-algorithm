import Foundation

func solution(_ my_string:String, _ n:Int) -> String {
    let length = my_string.count

    let startIndex = my_string.index(my_string.endIndex, offsetBy: -n)
    let substring = my_string[startIndex...]
    let result = String(substring)
    
    return result
    
}