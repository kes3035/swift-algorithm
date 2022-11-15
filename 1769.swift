let num = Int(readLine()!)!
var cycle = 1
var sumOfIndex = 0
func reducing(_ input: Int) {
    let stringNum = String(input)
    var stringArr: [String] = [String]()
    var intArr: [Int] = [Int]()
    for char in stringNum {
        stringArr.append(String(char))
    }
    for int in stringNum {
        intArr.append(Int(String(int))!)
    }
    sumOfIndex = intArr.reduce(0, +)
    while true {
        if sumOfIndex < 10 {
            
            break
        }
        cycle += 1
        reducing(sumOfIndex)

    }

}
reducing(num)
if sumOfIndex%3 == 0 {
    print(cycle)
    print("YES")
}
else if sumOfIndex%3 != 0 {
    print(cycle)
    print("NO")
}
