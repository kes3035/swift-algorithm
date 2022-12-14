func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    
    return !arr.filter{($0)%divisor == 0}.isEmpty ? arr.filter{($0)%divisor == 0}.sorted(by: <) : [-1]
}