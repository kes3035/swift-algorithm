import Foundation

func solution(_ my_string:String) -> [Int] {
    var lowerArr = Array(repeating: 0, count: 26)
    var upperArr = Array(repeating: 0, count: 26)
    
    for char in my_string {
        let str = String(char)
        if char.isLowercase {
            let asciiInteger = UnicodeScalar(str)?.value ?? 0
            let asciiToIndex = Int(asciiInteger) - 97
            lowerArr[asciiToIndex] += 1
        } else {
            let asciiInteger = UnicodeScalar(str)?.value ?? 0
            let asciiToIndex = Int(asciiInteger) - 65
            upperArr[asciiToIndex] += 1
        }
        
    }
    
    return upperArr + lowerArr
}
