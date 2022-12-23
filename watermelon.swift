func solution(_ n:Int) -> String {
    var result = ""
    var m = 0
    while true {
        if m == n {
            break
        }
        m += 1
        if m%2 != 0 {
            result += "수"
        } else {
            result += "박"
        }
    }
    return result
}