func reversedWord(_ arr: [String]) -> [String] {
    var newArr: [String] = []
    for i in 0..<arr.count {
        newArr.append(String(arr[i].reversed()))
    }
    return newArr
}



let testCase = Int(readLine()!)!
var arr: [[String]] = []
for _ in 1...testCase {
    let cases: [String] = readLine()!.split(separator: " ").map{String($0)}
    arr.append(cases)
}
var reversedArr: [[String]] = []
for i in 0..<arr.count {
    reversedArr.append(reversedWord(arr[i]))
}
for i in 0..<arr.count {
    for j in 0..<arr[i].count {
        print(reversedArr[i][j], terminator: " ")
    }
    print("")
}
