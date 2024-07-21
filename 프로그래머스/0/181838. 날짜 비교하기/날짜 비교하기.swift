import Foundation

func solution(_ date1:[Int], _ date2:[Int]) -> Int {
    let yearOfDate1 = date1[0]
    let monthOfDate1 = date1[1]
    let dateOfDate1 = date1[2]
    
    let yearOfDate2 = date2[0]
    let monthOfDate2 = date2[1]
    let dateOfDate2 = date2[2]
    
    if yearOfDate1 < yearOfDate2 {
        return 1
    } else {
        if monthOfDate1 < monthOfDate2 && yearOfDate1 == yearOfDate2 {
            return 1
        } else {
            if dateOfDate1 < dateOfDate2 && monthOfDate1 == monthOfDate2{
                return 1
            } else {
                return 0
            }
        }
    }
}