let input = Int(readLine()!)!
var resultArr: [[String]] = []
//var verticalArr: [[String]] = []
var arr: [String] = []
var horizontalResult = 0
var verticalResult = 0
var horNum = 0
var verNum = 0
for _ in 0..<input {
    let inputString = readLine()!.map{String($0)}
    for char in inputString {
        arr.append(String(char))
    }
    resultArr.append(arr)
    arr = []
}

for i in 0..<input {
    for j in 0..<input {
        if resultArr[i][j] == "." {
            horNum += 1
        }
        else  {
            if horNum >= 2 {
                horizontalResult += 1
                horNum = 0
            }
            horNum = 0
        }
        if j == (input - 1) {
            if horNum >= 2 {
                horizontalResult += 1
                horNum = 0
            }
            else {
                horNum = 0
            }
        }
        if resultArr[j][i] == "." {
            verNum += 1
        }
        else  {
            if verNum >= 2 {
                verticalResult += 1
                verNum = 0
            }
            verNum = 0
        }
        if j == (input - 1) {
            if verNum >= 2 {
                verticalResult += 1
                verNum = 0
            }
            else {
                verNum = 0
            }
        }
    }
}
print(horizontalResult, terminator: " ")
print(verticalResult)