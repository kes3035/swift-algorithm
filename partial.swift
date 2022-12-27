import Foundation

func solution(_ t:String, _ p:String) -> Int {
    let lenght = p.count
    var tArr: [String] = []
    for char in t {
        tArr.append(String(char))
    }
    var count = 0
    var str: String = ""
    for i in 0..<tArr.count - (lenght - 1) {
        // str += tArr[i...(i+lenght-1)]
        for j in 0..<lenght {
            str += tArr[i + j]
        }
        if Int(p)! >= Int(str)! {
            count += 1
            str = ""
        } else {
            str = ""
        }
    }
    return count
}