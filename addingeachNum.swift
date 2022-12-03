func solution(_ n:Int) -> Int {
    let stringNum = String(n)
    var num = 0
    for char in stringNum {
        let stringChar = String(char)
        let intChar = Int(stringChar)!
        num += intChar
    }
    return num
}