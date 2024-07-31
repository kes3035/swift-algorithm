import Foundation

func solution(_ sides:[Int]) -> Int {
    var result = 0
    var sides = sides
    let sortedSides = sides.sorted(by: >)
    var side_1 = sortedSides[0]
    var side_2 = sortedSides[1]
    var side_3 = side_1 - side_2 + 1
    // 주어진 두 변 중 긴 변이 가장 긴 변인 경우
    while true {
        //[6, 3]
        //4, 5, 6
        guard side_1 < side_2 + side_3 && side_3 <= side_1 else { break }
        result += 1
        side_3 += 1
    }
    
    side_1 = sortedSides[0]
    side_2 = sortedSides[1]
    side_3 = side_1 + 1
    // 나머지 한 변이 가장 긴 변인 경우 (주어진 변 중 긴 변보다 크거나 같음)
    while true {
        guard side_3 < side_1 + side_2 && side_1 < side_3 else { break }
        side_3 += 1
        result += 1
    }
    
    
    return result
}