func solution(_ s:String) -> String {
    var arr = ""
    var result = ""
    for str in s {                  //try hello world
        if str != " " {
            if arr.count%2 == 0 {
                arr += String(str).uppercased()
            }
            else {
                arr += String(str).lowercased()
            }
        } else {
            result += arr + " "
            arr = ""
        }
    }
    result += arr
    return result
}