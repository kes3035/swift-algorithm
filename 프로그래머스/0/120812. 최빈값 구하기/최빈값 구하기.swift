import Foundation

func solution(_ array:[Int]) -> Int {
    guard array.count != 1 else { return array.first ?? 0 }
    var numCountDict = [Int:Int]()
    let setArray = Set(array)
    let filteredRepeatingArr = Array(setArray)
    var countArr = [Int]()
    var numArr = [Int]()
    
    for num in array {
        guard numCountDict[num] != nil else {
            numCountDict[num] = 1
            continue
        }
        numCountDict[num]! += 1
    }
    
    for num in filteredRepeatingArr {
        countArr.append(numCountDict[num] ?? 1)
        numArr.append(num)
    }
    
    let maxCount = countArr.sorted(by: >).first ?? 1
    let indexOfMaxCount = countArr.firstIndex(of: maxCount) ?? 0
    
    guard countArr.count != 1 else { return numArr.first ?? 0 }
    
    if countArr.sorted(by: >)[0] == countArr.sorted(by: >)[1] {
        return -1
    } else {
        return numArr[indexOfMaxCount]
    }
}