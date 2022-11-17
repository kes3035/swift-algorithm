import Foundation

func solution(_ common: [Int]) -> Int {
    let arr: [Int] = common
    var result: Int = 0
    if arr[1] - arr[0] == arr[2] - arr[1]  { //등차수열
        result = arr.last! + (arr[1] - arr[0])
    }
    else if arr[1]/arr[0] == arr[2]/arr[1] { //등비수열
        result = arr.last!*(arr[1]/arr[0])
    }
    return result
}
