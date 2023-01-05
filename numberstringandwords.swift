enum Numbers: String {
    case one
    case two
    case three
    case four
    case five
    case six
    case seven
    case eight
    case nine
    case zero
}

func solution(_ s:String) -> Int {
    var answer = ""
    var string = ""
    var arr: [String] = []
    for char in s {
        if Int(String(char)) == nil {
            string += String(char)
            switch string {
            case Numbers.one.rawValue :
                arr.append("1")
                string = ""
            case Numbers.two.rawValue:
                arr.append("2")
                string = ""
            case Numbers.three.rawValue:
                arr.append("3")
                string = ""
            case Numbers.four.rawValue:
                arr.append("4")
                string = ""
            case Numbers.five.rawValue:
                arr.append("5")
                string = ""
            case Numbers.six.rawValue:
                arr.append("6")
                string = ""
            case Numbers.seven.rawValue:
                arr.append("7")
                string = ""
            case Numbers.eight.rawValue:
                arr.append("8")
                string = ""
            case Numbers.nine.rawValue:
                arr.append("9")
                string = ""
            case Numbers.zero.rawValue:
                arr.append("0")
                string = ""
            default:
                continue
            }
            
        } else {
            arr.append(String(char))
        }
    }
    for i in 0..<arr.count {
        switch arr[i] {
        case Numbers.one.rawValue :
            arr[i] = "1"
        case Numbers.two.rawValue:
            arr[i] = "2"
        case Numbers.three.rawValue:
            arr[i] = "3"
        case Numbers.four.rawValue:
            arr[i] = "4"
        case Numbers.five.rawValue:
            arr[i] = "5"
        case Numbers.six.rawValue:
            arr[i] = "6"
        case Numbers.seven.rawValue:
            arr[i] = "7"
        case Numbers.eight.rawValue:
            arr[i] = "8"
        case Numbers.nine.rawValue:
            arr[i] = "9"
        case Numbers.zero.rawValue:
            arr[i] = "0"
        default:
            continue
        }
    }
    for i in arr {
        answer += String(i)
    }
    return Int(answer)!
}