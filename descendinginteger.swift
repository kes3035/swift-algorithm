func solution(_ n:Int64) -> Int64 {
    let string = String(n).sorted(by: >)
    var result = ""
    for char in string {
        result += String(char)
    }
    
    
    return Int64(result)!
}