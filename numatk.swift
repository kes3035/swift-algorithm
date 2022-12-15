func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    let arr = array
    let commandArr = commands
    var resultArr: [Int] = []
    for i in 0..<commandArr.endIndex {
        let newArr = arr[(commandArr[i][0]-1)...(commandArr[i][1]-1)].sorted(by: <)
        resultArr.append(newArr[commandArr[i][2] - 1])
    }
    return resultArr
}