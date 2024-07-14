import Foundation

func solution(_ myString:String, _ pat:String) -> Int {
    var countOfPatInMyString: Int = 0
    var myStr = myString.map{String($0)}
    var myPat = pat.map{String($0)}
    for i in 0...(myStr.count - myPat.count) {
        if myStr[i...(i + pat.count - 1)].map{String($0)} == myPat {
            countOfPatInMyString += 1
            continue
        }
    }
    
    
    
    return countOfPatInMyString
}