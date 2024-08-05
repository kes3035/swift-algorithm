import Foundation

typealias Number = Int
typealias Count = Int

func solution(_ a:Int, _ b:Int, _ c:Int, _ d:Int) -> Int {
    var countByNumber: [Number:Count] = [:]
    let numberArray = [a, b, c, d]
    for num in numberArray {
        guard countByNumber[num] == nil else { 
            countByNumber[num]! += 1
            continue
        }
        countByNumber[num] = 1
    }
    
    let values = countByNumber.values.sorted(by: <).map{Int($0)}
    let keys = countByNumber.keys.map{Int($0)}
    let biggestCount = values.last ?? 1
    
    switch biggestCount {
        case 4:
            return a*1111
        case 3:
            let p = keys.filter{countByNumber[$0] == 3}[0]
            let q = keys.filter{countByNumber[$0] == 1}[0]
            return (10*p + q)*(10*p + q)
        case 2:
            if countByNumber.count == 2 {
                let p = keys[0]
                let q = keys[1]
                return (p+q)*abs(p-q)
            } else {
                return keys.filter{countByNumber[$0] != 2}.reduce(1, *)
            }
        case 1:
            return [a, b, c, d].sorted(by: <).first ?? 1
        default:
            return 1
    }
       
}

