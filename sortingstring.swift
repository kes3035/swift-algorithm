func solution(_ my_string: String) -> String {
    var myString = my_string.lowercased()
    var arr: [String] = []
    for char in myString {
        arr.append(String(char))
    }
    arr = arr.sorted(by: <)
    
    var result: String = ""
    for i in 0..<arr.count {
        result += arr[i]
    }
    return result
}
