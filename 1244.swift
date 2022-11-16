/*
 1이면 남학생, 2이면 여학생
 남자는 스위치의 번호가 자기가 받은 수의 배수이면 걔네를 전부 바꿈
 여자는 받은 번호 기준으로 양 옆에것들이 대칭이면 바꿈. 차근차근. 시작부터 대칭이 아니면 자기자신만 바꿈
 
 */



let numOfSwitches: Int = Int(readLine()!)!
var stateOfSwitches: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
let numOfStudent: Int = Int(readLine()!)!
for _ in 1...numOfStudent {                     //남학생
    let studentsNum: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
    if studentsNum[0] == 1 {
        for i in 0..<stateOfSwitches.count {
            if stateOfSwitches[i]%studentsNum[0] == 0 {
                switch stateOfSwitches[i] {
                case 0:
                    stateOfSwitches[i] = 1
                case 1:
                    stateOfSwitches[i] = 0
                default:
                    break
                }
            }
        }
    }
    else if studentsNum[0] == 2 {                  //여학생
        for i in 0..<stateOfSwitches.count {
            if i == 0 || i == stateOfSwitches.count - 1 {
                switch stateOfSwitches[i] {
                case 0:
                    stateOfSwitches[i] = 1
                case 1:
                    stateOfSwitches[i] = 0
                default:
                    break
                }
            }
            for j in 1...stateOfSwitches.count - 1 {
                

                if stateOfSwitches[i - j] == stateOfSwitches[i + j] {
                    switch stateOfSwitches[i - j] {
                    case 0:
                        stateOfSwitches[i - j] = 1
                        stateOfSwitches[i + j] = 1
                    case 1:
                        stateOfSwitches[i - j] = 0
                        stateOfSwitches[i + j] = 0
                    default:
                        break
                    }
                }
            }
        }
    }
}
