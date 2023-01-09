func solution(_ babbling:[String]) -> Int {
    var result: Int = 0
    var isBabbling: Bool = false
    var word: String = ""
    for string in babbling {
        for char in string {
            word += String(char)
            switch word {
            case Babbling.aya.rawValue:
                isBabbling = true
                word = ""
            case Babbling.ye.rawValue:
                isBabbling = true
                word = ""
            case Babbling.woo.rawValue:
                isBabbling = true
                word = ""
            case Babbling.ma.rawValue:
                isBabbling = true
                word = ""
            default:
                isBabbling = false
                continue
            }
        }
        word = ""
        if isBabbling {
            result += 1
            
        }
    }
    return result
}

enum Babbling: String {
    case aya
    case ye
    case woo
    case ma
}