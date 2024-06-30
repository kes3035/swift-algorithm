import Foundation

func solution(_ my_string:String, _ n:Int) -> String {
    let strArr = Array(my_string)
    let str = strArr[0..<n]
    
    
    return str.map{String($0)}.joined()
}