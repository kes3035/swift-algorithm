let num = Int(readLine()!)!
for _ in 1...num {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    print(lastNum(input[0],input[1]))
}
func lastNum(_ number: Int, _ times: Int) -> Int {
    let num = number
    var timesNum = number
    var arr: [Int] = [number]
    var result = 0
    for _ in 1...times {
        timesNum = timesNum*num
        let stringNumsLast = String(String(timesNum).last!)
        let intNumsLast = Int(stringNumsLast)!
        timesNum = intNumsLast
        if !arr.contains(intNumsLast) {
            arr.append(intNumsLast)
        }
        else {
            break
        }
    }
    if arr.count == 1 {
        result = arr[0]
    }
    else if arr.count < times {
        if times%arr.count < times && times%arr.count != 0 {
            result = arr[times%arr.count - 1]
        }
        else if times%arr.count == 0 {
            result = arr[arr.count - 1]
        }
    }
    else if arr.count == times {
        result = arr[arr.count - 1]
    }
    return result
}

// 3 9 7 1 3 9 7 1
// 7 9 3 1 7
