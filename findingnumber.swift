func solution(_ num:Int, _ k:Int) -> Int {
    let stringNum = String(num)
    var arr: [String] = []
    for i in stringNum {
        arr.append(String(i))
        if String(i) == String(k) {
            break
        }
    }
    var result = arr.count
    if !arr.contains(String(k)) {
        result = -1
    }

    return result
}
