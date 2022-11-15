let input = Int(readLine()!)!
var arr: [Int] = [Int]()
var discardedArr: [Int] = [Int]()
for i in stride(from: 1, through: input, by: 1) {
    arr.append(i)
}
while true {
    if arr.count != 1 {
        discardedArr.append(arr[0])
        arr.remove(at: 0)
        arr.append(arr[0])
        arr.remove(at: 0)
    }
    if arr.count == 1 {
        discardedArr.append(arr[0])
        break
    }
}
for i in 0..<discardedArr.count {
    print(discardedArr[i], terminator: " ")
}
