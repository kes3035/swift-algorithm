func solution(_ s:String) -> Bool {
    var bool: Bool = true
    if s.count == 4 || s.count == 6 {
        for char in s {
            if Int(String(char)) == nil {
                bool = false
                break
            }
        }
    } else {
        bool = false
    }
    return bool
}