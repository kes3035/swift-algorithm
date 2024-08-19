import Foundation

func solution(_ array:[Int]) -> Int {
    let sortedArray = array.sorted(by: <)
    let countOfArr = sortedArray.count
    return sortedArray[countOfArr/2]
}