import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    var dic: [String : Int] = [:]
    var result: [Int] = []
    for i in 0..<name.endIndex {
        dic[name[i]] = yearning[i]
    }
    for photoArray in photo {
        var score = 0
        photoArray.map { name in
            if dic[name] != nil {
                score += dic[name]!
            }
        }
        result.append(score)
    }
    return result
}