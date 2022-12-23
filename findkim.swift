func solution(_ seoul:[String]) -> String {
    var locationOfKim: Int = 0
    for i in 0..<seoul.endIndex {
        if seoul[i] == "Kim" {
            locationOfKim = i
            break
        }
    }
    return "김서방은 \(locationOfKim)에 있다"
}