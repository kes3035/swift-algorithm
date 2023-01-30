import Foundation

func solution(_ s:String) -> Bool {
    let lowercasedS = s.lowercased()
    var countOfP = 0
    var countOfY = 0
    for char in lowercasedS {
        
        if char == "p" {
            countOfP += 1
        } else if char == "y" {
            countOfY += 1
        }
    }
    if countOfP == countOfY {
        return true
    } else { 
        return false
    }
    
}