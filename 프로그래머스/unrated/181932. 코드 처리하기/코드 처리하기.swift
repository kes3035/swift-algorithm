import Foundation

func solution(_ code:String) -> String {
    var ret = ""
    var mode = 0
    var arr = code.map({String($0)})
    for i in 0..<code.count {
        switch mode {
            case 0:
            guard arr[i] != "1" else {
                mode = 1
                continue
            }
            guard i%2 == 0 else { continue }
            ret += arr[i]
            case 1:
            guard arr[i] != "1" else {
                mode = 0
                continue
            }
            guard i%2 != 0 else { continue }
            ret += arr[i]
            default:
            break
        }
    }
    return ret.isEmpty ? "EMPTY" : ret
}
