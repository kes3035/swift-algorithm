func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var result = 0
    var num = n
    while num/a != 0 {
        if num/a == 0 {
            break
        }
        result += (num/a)*b
        num = num - a*(num/a) + (num/a)*b
    }
    return result
}