import Foundation

func solution(_ s:String) -> Int {
    var result = 0
    var character: [Character: Int] = [:]
    var nonEqualCount: Int = 0
    for char in s {
        
        if character == [:] {
            character[char] = 1
        } else {
            if character.keys.contains(char) {
                character[char]! += 1
            } else {
                nonEqualCount += 1
            }
            if character.values.contains(nonEqualCount) {
                result += 1
                character = [:]
                nonEqualCount = 0
            }
        }
    }
    if character.values.count >= 1 {
        result += 1
    }
    return result
}
