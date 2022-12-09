func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var absolute: [Int] = absolutes
    var sign: [Bool] = signs
    for i in 0..<signs.count {
        if sign[i] == false {
            absolute[i] = -absolutes[i]
        }
    }
    
    
    
    return absolute.reduce(0, +)
}
