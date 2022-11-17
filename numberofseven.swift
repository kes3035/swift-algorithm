func solution(_ array: [Int]) -> Int {
    var counting: Int = 0
    let arr = array
    var newArr: [String] = []
    var newString: String = ""
    var resultArr: [String] = []
    for i in arr {
        newArr.append(String(i))
    }
    for i in 0..<newArr.count {
        newString += newArr[i]
    }
    for char in newString {
        resultArr.append(String(char))
    }
    for i in 0..<resultArr.count {
        if resultArr[i] == "7" {
            counting += 1
        }
    }

    return counting
}