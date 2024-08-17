import Foundation

func solution(_ price:Int) -> Int {
    if price >= 500000 {
        return Int(Double(price)*80/100)
    }
    if price >= 300000 {
        return Int(Double(price)*90/100)
    }
    if price >= 100000 {
        return Int(Double(price)*95/100)
    }    
    return price
}