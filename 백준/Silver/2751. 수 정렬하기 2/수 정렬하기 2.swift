var countOfRep = Int(readLine()!)!

var arr: [Int] = []

for _ in 1...countOfRep {
    arr.append(Int(readLine()!)!)
}

var sortedArr = arr.sorted(by: <)

for num in sortedArr {
    print(num)
}