import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var resultArr: [Int] = arr
    let minimumPowerOfTwo = getMinimumPowerExponent(lengthOfArr: resultArr.count)
    if resultArr.count >= minimumPowerOfTwo  {
        return resultArr
    } else {
        let arr = Array(repeating: 0, count: minimumPowerOfTwo - resultArr.count)
        resultArr += arr
        return resultArr
    } 
}

func getMinimumPowerExponent(lengthOfArr length: Int) -> Int {
    var minimumPowerExponent: Float = 0
    var minimumPowerOfTwo = 1
    while length > minimumPowerOfTwo {
        minimumPowerExponent += 1.0
        minimumPowerOfTwo = Int(pow(2.0, minimumPowerExponent))
    }
    return minimumPowerOfTwo
}