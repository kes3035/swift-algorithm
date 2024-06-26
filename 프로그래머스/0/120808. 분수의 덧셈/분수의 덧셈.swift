import Foundation

func gcd(_ a: Int, _ b: Int) -> Int {
    if a % b == 0 {
        return b
    }
    return gcd(b, a % b)
}

func solution(_ denum1:Int, _ num1:Int, _ denum2:Int, _ num2:Int) -> [Int] {
    var numerator = denum1 * num2 + denum2 * num1 //분자
    var denominator = num1 * num2                 //분모
    
    var gcdValue = gcd(denominator, numerator)
    
    var result = [numerator / gcdValue, denominator / gcdValue]
    return result
}