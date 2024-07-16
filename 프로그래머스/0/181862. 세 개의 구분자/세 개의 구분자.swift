import Foundation

func solution(_ myStr:String) -> [String] {
    var resultStrArr: [String] = []
    var partialString: String = ""

    for char in myStr {
        if (char == "a" || char == "b" || char == "c") && !partialString.isEmpty {
            resultStrArr.append(partialString)
            partialString = ""
        } else if (char == "a" || char == "b" || char == "c") {
            continue
        } else {
            partialString += String(char)    
        }
        
        
    }
    resultStrArr.append(partialString)
    if resultStrArr == [""] {
        return ["EMPTY"] 
    }
    return resultStrArr
}