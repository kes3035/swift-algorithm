import Foundation

func solution(_ strArr:[String]) -> Int {
    var strArrCountDict: [Int: Int] = [:]
    for str in strArr {
        let countOfStr = str.count
        guard strArrCountDict.keys.contains(countOfStr) else {
            // 딕셔너리에 배열 원소의 길이에 대한 정보가 없는 경우
            strArrCountDict[countOfStr] = 1
            continue
        }
        strArrCountDict[countOfStr]! += 1
    }
    let maximumCountOfStrLength = strArrCountDict.values.sorted(by: >)
    return maximumCountOfStrLength.first!
}