import Foundation

func solution(_ n:Int) -> Int {
    let numDict: [Int: Int] = get3xVillageNum()
    return numDict[n] ?? 0
}


func get3xVillageNum() -> [Int:Int] {
    var numDict: [Int:Int] = [:]
    var beforeNum = 1
    var i = 1
    while numDict.count <= 100 {
        guard !String(beforeNum).contains("3") && beforeNum%3 != 0 else {
            beforeNum += 1  
            continue
        }
        numDict[i] = beforeNum
        beforeNum += 1
        i += 1
    }
    
    return numDict
}