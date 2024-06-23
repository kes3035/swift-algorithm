import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var result: [Int] = arr
    
    for query in queries {
        let s = query[0]
        let e = query[1]
        let k = query[2]
        
        let array = Array(s...e)
        
        array.forEach { value in
            if value%k == 0 {
                result[value] += 1
            }                      
        }
    }
    
    
    
    
    return result
}