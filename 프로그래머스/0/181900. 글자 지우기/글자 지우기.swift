import Foundation

func solution(_ my_string:String, _ indices:[Int]) -> String {
    
    var result: String = ""
    var resultStr: [Int: Character] = [:]
    var index:Int = 0
    
    for char in my_string {
        resultStr[index] = char
        index += 1
    }
    
    for i in indices {
        resultStr[i] = nil
    }
    
    for i in resultStr.keys.sorted() {
        result += String(resultStr[i] as! Character)
    }

    
    return result
}