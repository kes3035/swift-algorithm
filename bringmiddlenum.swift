func solution(_ s:String) -> String {
    var arr: [String] = []
    for char in s {
        arr.append(String(char))
    }
    if arr.count%2 != 0 {
        return arr[arr.count/2]
    }
    else {
        return arr[arr.count/2 - 1]+arr[arr.count/2] 
    }
}