var countOfArr: [Int] = []
var arr: [[String]] = []
for _ in 1...5 {
    let input = readLine()!
    countOfArr.append(input.count)
    var stringArr: [String] = []
    for char in input {
        stringArr.append(String(char))
    }
    arr.append(stringArr)
    stringArr = []
}
for i in 0...4 {
    while arr[i].count < countOfArr.max()! {
        arr[i].append("@")
        if arr[i].count == countOfArr.max()! {
            break
        }
    }
}

// [6개],[6개],[6개],[6개],[6개]
let maxCount = countOfArr.max()!
var resultArr: [String] = []
for i in 0..<maxCount {
    for j in 0...4 {
        if arr[j][i] == "@" {
            continue
        }
        else {
            resultArr.append(arr[j][i])
        }
    }
}
for i in 0..<resultArr.count {
    print(resultArr[i], terminator: "")
}
