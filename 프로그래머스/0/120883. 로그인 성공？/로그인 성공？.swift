import Foundation

func solution(_ id_pw:[String], _ db:[[String]]) -> String {
    
    let myID = id_pw[0]
    let myPW = id_pw[1]
    
    let loginArr = db.filter{$0 == id_pw}
    
    let wrongpwArr = db.filter{$0[0] == id_pw[0] && $0[1] != id_pw[1]}
    
    if !loginArr.isEmpty {
        return "login"
    } else {
        if !wrongpwArr.isEmpty {
            return "wrong pw"
        } else {
            return "fail"
        }
    }
}