func solution(_ x:Int) -> Bool {
    var result = false
    var sum = 0
    let num = String(x)
    for char in num {
        sum += Int(String(char))!
    }
    if x%sum == 0 {
        result = true
    }
    return result
}