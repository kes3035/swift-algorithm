import Foundation

func solution(_ dot:[Int]) -> Int {
    let x = dot[0]
    let y = dot[1]
    
    let isXPositive = x > 0
    let isYPositive = y > 0 
    
    switch (isXPositive, isYPositive) {
        case (true, true):
            return 1
        case (true, false):
            return 4
        case (false, true):
            return 2
        case (false, false):
            return 3
    }
}