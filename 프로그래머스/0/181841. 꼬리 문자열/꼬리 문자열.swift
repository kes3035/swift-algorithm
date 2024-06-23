import Foundation

func solution(_ str_list:[String], _ ex:String) -> String {
    var result = ""
    for str in str_list {
        guard !str.contains(ex) else { continue }
        result += str
    }
    return result
}