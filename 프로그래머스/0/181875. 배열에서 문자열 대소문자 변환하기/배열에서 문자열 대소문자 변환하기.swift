import Foundation

func solution(_ strArr:[String]) -> [String] {
    var resultArr: [String] = []
    for (index, str) in strArr.enumerated() {
        if index%2 == 0 {
            resultArr.append(str.lowercased())
        } else {
            resultArr.append(str.uppercased())
        }
    }
    return resultArr
}