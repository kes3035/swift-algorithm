import Foundation

func solution(_ arr:[[Int]]) -> Int {
    var result = 1
    for i in 0..<arr.endIndex {
        for j in 0..<arr[i].endIndex {
            guard arr[i][j] == arr[j][i] else { result = 0; break }
        }
    }
    return result
}