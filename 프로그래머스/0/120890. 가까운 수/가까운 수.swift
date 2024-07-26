import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    var addedArray = array
    addedArray.append(n)
    addedArray.sort()
    let indexOfN = addedArray.firstIndex(of: n)!
    if indexOfN == 0 {
        return addedArray[1]
    } else if indexOfN == (addedArray.endIndex - 1) {
        return addedArray[addedArray.endIndex - 2]
    } else {
        let littleNum = addedArray[indexOfN - 1]
        let bigNum = addedArray[indexOfN + 1]
        if n-littleNum == bigNum-n {
            return littleNum
        } else {
            let differenceWithLittle = n - littleNum
            let differenceWithBig = bigNum - n
            if differenceWithLittle > differenceWithBig {
                return bigNum
            } else {
                return littleNum
            }
        }
        
    }
}