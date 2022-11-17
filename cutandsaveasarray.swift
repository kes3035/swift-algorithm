import Foundation

func solution(_ my_str: String, _ n: Int) -> [String] {
    var myString = my_str
    var myNum = n
    var stringArr: [String] = []
    var newString = ""
    var resultArr: [String] = []
    for char in myString {
        stringArr.append(String(char))
    }
    while true {
        if stringArr.count >= myNum {
            for i in 0..<myNum {
                newString += stringArr[i]
            }
            stringArr.removeSubrange(0...(myNum-1))
            resultArr.append(newString)
            newString = ""
        }
        else if stringArr.count < myNum {
            for i in 0..<stringArr.count {
                newString += stringArr[i]
            }
            stringArr.removeAll()
            resultArr.append(newString)
        }
        if stringArr.isEmpty {
            break
        }
    }
    return resultArr
}
