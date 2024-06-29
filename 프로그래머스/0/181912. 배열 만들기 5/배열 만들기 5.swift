import Foundation

func solution(_ intStrs:[String], _ k:Int, _ s:Int, _ l:Int) -> [Int] {
    var resultArr: [Int] = []
    
    for intStr in intStrs {
        let intStrArr = Array(intStr)
        let partialIntStr: String = intStrArr[s...s+l-1].map{String($0)}.joined()
        let partialInt: Int = Int(partialIntStr) ?? 0
        if partialInt > k {
            resultArr.append(partialInt)
        } else {
            continue
        }
    }
    return resultArr
}