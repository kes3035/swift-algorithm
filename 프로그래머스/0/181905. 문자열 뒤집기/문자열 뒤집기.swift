import Foundation

func solution(_ my_string:String, _ s:Int, _ e:Int) -> String {
    if s == 0 && e == 0  {
        return my_string
    }
    var strArr = Array(my_string)
    var partialArr = strArr[s...e].map{String($0)}
    var reversedPartialArr: [String.Element] = partialArr.reversed().map{String.Element($0)}
    strArr[s...e] = reversedPartialArr[0...]
    return strArr.map{String($0)}.joined()
}