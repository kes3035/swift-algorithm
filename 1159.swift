let input = readLine()!
let uppercasedInput: String = String(input.uppercased())
var arr: [String] = []
if input.count == 1 {
    print(input.uppercased())
}
else {
    for i in uppercasedInput {
        arr.append(String(i))
    }
    
    func removeDuplication(_ array: [String]) ->[String] {
        var removeArr: [String] = []
        for i in array {
            if removeArr.contains(String(i)) == false {
                removeArr.append(String(i))
            }
        }
        return removeArr
    }
    let removedArr = removeDuplication(arr)
    
    var countingArr: [Int] = [Int](repeating: 0, count: removedArr.count)
    for i in 0..<removedArr.count {
        if arr.contains(removedArr[i]) {
            countingArr[i] += arr.filter{($0) == removedArr[i]}.count
        }
    }
    //print(removedArr)
    //print(countingArr)
    if countingArr.sorted(by: >)[0] == countingArr.sorted(by: >)[1] {
        print("?")
    }
    for i in 0..<removedArr.count {
        if countingArr.sorted(by: >)[0] != countingArr.sorted(by: >)[1] {
            if countingArr.max()! == countingArr[i] {
                print(removedArr[i])
            }
        }
    }
}
