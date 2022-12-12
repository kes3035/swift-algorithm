func solution(_ arr:[Int]) -> [Int] {
    let minimumValue = arr.min()!
    let result = arr.filter{$0 != minimumValue}
    return result.isEmpty ? [-1] : result
}