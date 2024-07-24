import Foundation

func solution(_ numbers:String) -> Int64 {
    let numDict: [String : String] = ["one" : "1", "two" : "2", "three" : "3", "four" : "4",
                                     "five" : "5", "six" : "6", "seven" : "7", "eight" : "8", 
                                      "nine" : "9", "zero" : "0"]
    var string = ""
    var stringNum = "" 
    
    for num in numbers {
        guard numDict[stringNum] != nil else { 
            stringNum += String(num)
            continue
        }
        string += numDict[stringNum]!
        stringNum = String(num)
    }
    guard numDict[stringNum] != nil else { return Int64(string)! }
    
    string += numDict[stringNum]!
    
    return Int64(string)!
}
