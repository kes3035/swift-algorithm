func solution(_ n:Int64) -> [Int] {
    var string = ""
    let str = String(n)
    string += str
    
    var result: [Int] = []
    for char in string {
        result.append(Int(String(char))!)
    }
    
    return result.reversed()
}