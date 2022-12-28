func solution(_ food:[Int]) -> String {
    var result = ""
    for i in 1..<food.endIndex {
        guard food[i] != 1 else { continue }
        if food[i]%2 == 0 {
            for _ in 1...food[i]/2 {
                result += String(i)
            }
        } else {
            for _ in 1...food[i]/2 {
                result += String(i)
            }
        }
    }
    return result + "0" + result.reversed()
}