var resultArr: [String] = []
var maxArr: [Int] = []
var arr: [[String]] = []
var stringArr: [String] = []
for _ in 1...5 {
    let input = readLine()!
    for char in input {
        stringArr.append(String(char))
    }
    arr.append(stringArr)
    stringArr = []
}


for i in 0...4 {
    maxArr.append(arr[i].count)
}
let maxNum = maxArr.sorted(by: >)[0]
for i in 0...4 {
    if arr[i].count != maxNum {
        for _ in 1...(maxNum - arr[i].count) {
            arr[i].append("@")
        }
    }
}
for i in 0..<maxNum {
    for j in 0..<maxNum {
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
