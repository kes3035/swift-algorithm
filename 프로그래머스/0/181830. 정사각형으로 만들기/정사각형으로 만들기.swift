import Foundation

func solution(_ arr:[[Int]]) -> [[Int]] {
    var resultArr = arr
    let columnCountOfArr = arr.endIndex - 1
    let rowCountOfArr = arr[0].endIndex - 1
    
    if columnCountOfArr > rowCountOfArr {
        for i in 0...columnCountOfArr {
            let array = Array(repeating: 0, count: (columnCountOfArr-rowCountOfArr))
            resultArr[i].append(contentsOf: array)
        }
    } else if columnCountOfArr < rowCountOfArr {
        for i in 1...(rowCountOfArr-columnCountOfArr) {
            let array = Array(repeating: 0 ,count: rowCountOfArr+1)
            resultArr.append(array)
        }
    }
    
    return resultArr
}