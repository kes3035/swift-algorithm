import Foundation

func solution(_ order:Int) -> Int {
    let str = String(order)
    let array = str.map{String($0)}
    var result = 0
    for element in array {
        if element == "3" || element == "6" || element == "9" {
            result += 1
        } else { 
            continue
        }
    }
    
    
    return result
}