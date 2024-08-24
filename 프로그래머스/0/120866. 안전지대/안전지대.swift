import Foundation

func solution(_ board:[[Int]]) -> Int {
    let n = board.count
    var unsafeArea: [[Int]] = []
    for i in 0..<n {
        for j in 0..<n {
            guard board[i][j] == 1 else { continue }
            let unsafeCoords = getUnsafeCoords(coordOfBomb: [i, j], boardSize: n)
            unsafeArea += unsafeCoords
        }
    }
    
    let unsafeAreaSet = Set(unsafeArea)
    let unsafeAreaArray = Array(unsafeAreaSet)
    
    
    
    return n*n - unsafeAreaArray.count
}

func isOutOfRange(currentCoord coord: [Int], sizeOfBoard n: Int) -> Bool {
    let i = coord[0]
    let j = coord[1]
    
    guard i < 0 || j < 0 || i == n || j == n else { return true }
    
    
    return false
}

func getUnsafeCoords(coordOfBomb coord: [Int], boardSize: Int) -> [[Int]] {
    var unsafeCoords: [[Int]] = []
    let i = coord[0]
    let j = coord[1]
    
    if isOutOfRange(currentCoord: [i-1, j-1], sizeOfBoard: boardSize) {
        unsafeCoords.append([i-1, j-1])
    }
    if isOutOfRange(currentCoord: [i-1, j], sizeOfBoard: boardSize) {
        unsafeCoords.append([i-1, j])
    }
    if isOutOfRange(currentCoord: [i-1, j+1], sizeOfBoard: boardSize) {
        unsafeCoords.append([i-1, j+1])
    }
    if isOutOfRange(currentCoord: [i, j-1], sizeOfBoard: boardSize) {
        unsafeCoords.append([i, j-1])
    }
    if isOutOfRange(currentCoord: [i, j], sizeOfBoard: boardSize) {
        unsafeCoords.append([i, j])
    }
    if isOutOfRange(currentCoord: [i, j+1], sizeOfBoard: boardSize) {
        unsafeCoords.append([i, j+1])
    }
    if isOutOfRange(currentCoord: [i+1, j-1], sizeOfBoard: boardSize) {
        unsafeCoords.append([i+1, j-1])
    }
    if isOutOfRange(currentCoord: [i+1, j], sizeOfBoard: boardSize) {
        unsafeCoords.append([i+1, j])
    }
    if isOutOfRange(currentCoord: [i+1, j+1], sizeOfBoard: boardSize) {
        unsafeCoords.append([i+1, j+1])
    }
    return unsafeCoords
}