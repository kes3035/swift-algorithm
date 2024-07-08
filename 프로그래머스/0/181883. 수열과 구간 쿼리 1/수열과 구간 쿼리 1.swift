import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var resultArr = arr
    
    for query in queries {
        let s = query[0]
        let e = query[1]
        resultArr.replaceSubrange(s...e, with: resultArr[s...e].map{Int($0 + 1)} )
    }
    return resultArr
}