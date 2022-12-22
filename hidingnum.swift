func solution(_ phone_number:String) -> String {
    var securedNum = ""
    var phoneNum = Array(phone_number)
    for i in stride(from: 3, through: 0, by: -1) {
        let countOfPhoneNum = phoneNum.endIndex
        securedNum += String(phoneNum[countOfPhoneNum - i - 1])
    }
    let star: String = String(repeating: "*", count: phoneNum.endIndex - 4)
    return star + securedNum
}