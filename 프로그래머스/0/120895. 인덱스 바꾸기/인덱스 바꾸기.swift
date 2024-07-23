import Foundation

func solution(_ my_string:String, _ num1:Int, _ num2:Int) -> String {
    var strArr = my_string.map{String($0)}
    let str1 = strArr[num1]
    let str2 = strArr[num2]
    strArr[num1] = str2
    strArr[num2] = str1
    return strArr.joined()
}