import Foundation

func solution(_ my_string:String, _ is_prefix:String) -> Int {
    let prefixCount = is_prefix.count
    let myArr = my_string.map{String($0)}
    
    guard prefixCount <= myArr.count else { return 0 }

    let isPrefix = myArr[0..<prefixCount].map{String($0)}.joined()
    
    return isPrefix == is_prefix ? 1 : 0
}