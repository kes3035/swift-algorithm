import Foundation

func solution(_ emergency:[Int]) -> [Int] {
    let sortedEmergency = emergency.sorted(by: >)
    var result: [Int] = Array(repeating: 0, count: emergency.count)
    var order = 1
    for element in sortedEmergency {
        let index = emergency.firstIndex(of: element) ?? 0
        result[index] = order
        order += 1
    }
    return result
}