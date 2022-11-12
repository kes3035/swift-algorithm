let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0], m = input[1]
var arr: [[String]] = []
var stringArr: [String] = []
var result: Int = 0
for _ in 1...n {
    let statusOfCastle = readLine()!
    for char in statusOfCastle {
        stringArr.append(String(char))
    }
    arr.append(stringArr)
    stringArr = []
}
for i in 0..<n {
    if !arr[i].contains("X") {
        result += 1
    }
}
print(result)