import Foundation

func solution(_ my_string:String, _ index_list:[Int]) -> String {
    var result = ""
    for index in index_list {
        let index = my_string.index(my_string.startIndex, offsetBy: index)
        let subString = String(my_string[index])
        result += subString
    }
    return result
}