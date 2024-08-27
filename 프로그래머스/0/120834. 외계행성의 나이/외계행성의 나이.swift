import Foundation

func solution(_ age:Int) -> String {
    let stringAge = String(age)
    let ageIntArr = stringAge.map{Int(String($0))!}
    var age = ""
    for i in ageIntArr {
        age += String(UnicodeScalar(i + 97)!)
    }
    return age
}