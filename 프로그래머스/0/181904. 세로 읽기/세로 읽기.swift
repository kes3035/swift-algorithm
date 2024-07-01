import Foundation

func solution(_ my_string:String, _ m:Int, _ c:Int) -> String {
    var result: String = ""
    
    var myStringArr = Array(my_string).map{String($0)}
        
    var repeatCount = my_string.count/m
    
    for _ in 1...repeatCount {
        result += myStringArr[0..<m].map{Array($0)}[c-1]
        myStringArr.removeSubrange(0..<m)
    }
    
    return result
}