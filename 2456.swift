let num = Int(readLine()!)!
var numberOne: [Int] = [0, 0, 0]
var numberTwo: [Int] = [0, 0, 0]
var numberThree: [Int] = [0, 0, 0]
var oneScore: Int = 0
var twoScore: Int = 0
var threeScore: Int = 0


for _ in 1...num {
    let preferrences: [Int] = readLine()!.split(separator: " ").map{Int($0)!}
    let one = preferrences[0]
    let two = preferrences[1]
    let three = preferrences[2]
    if one == 3 {
        numberOne[0] += 1
    }
    else if one == 2 {
        numberOne[1] += 1
    }
    else if one == 1 {
        numberOne[2] += 1
    }
    if two == 3 {
        numberTwo[0] += 1
    }
    else if two == 2 {
        numberTwo[1] += 1
    }
    else if two == 1 {
        numberTwo[2] += 1
    }
    if three == 3 {
        numberThree[0] += 1
    }
    else if three == 2 {
        numberThree[1] += 1
    }
    else if three == 1 {
        numberThree[2] += 1
    }
}
// 호감도가 제일 높으면 우승인데 동일하면 3점이 가장 많은 후보가 우승, 3점도 같으면 2점이 가장 많은 후보가 우승 3,2점 횟수가 같으면 아무도 회장으로 결정할 수 없음 그럴 땐 0과 점수를 출력
oneScore = numberOne[0]*3 + numberOne[1]*2 + numberOne[2]
twoScore = numberTwo[0]*3 + numberTwo[1]*2 + numberTwo[2]
threeScore = numberThree[0]*3 + numberThree[1]*2 + numberThree[2]

var arr: [Int] = [oneScore,twoScore,threeScore]
if arr.sorted(by: >)[0] != arr.sorted(by: >)[1] {
    if arr.sorted(by: >)[0] == oneScore {
        print("1", terminator: " ")
        print(oneScore)
    }
    else if arr.sorted(by: >)[0] == twoScore {
        print("2", terminator: " ")
        print(twoScore)
    }
    else if arr.sorted(by: >)[0] == threeScore {
        print("3", terminator: " ")
        print(threeScore)
    }
}
else {
    if (numberOne[0] == numberTwo[0] && numberOne[1] == numberTwo[1]) || (numberThree[0] == numberTwo[0] && numberThree[1] == numberTwo[1]) || (numberOne[0] == numberThree[0] && numberOne[1] == numberThree[1]) {
        print("0", terminator: " ")
        print(oneScore)
    }
    else if oneScore == twoScore && numberOne[0] == numberTwo[0] {
        if numberOne[1] > numberTwo[1] {
            print("1", terminator: " ")
            print(oneScore)
        }
        else {
            print("2", terminator: " ")
            print(twoScore)
        }
    }
    else if threeScore == twoScore && numberThree[0] == numberTwo[0] {
        if numberThree[1] > numberTwo[1] {
            print("3", terminator: " ")
            print(threeScore)
        }
        else {
            print("2", terminator: " ")
            print(twoScore)
        }
    }
    else if oneScore == threeScore && numberOne[0] == numberThree[0] {
        if numberOne[1] > numberThree[1] {
            print("1", terminator: " ")
            print(oneScore)
        }
        else {
            print("3", terminator: " ")
            print(threeScore)
        }
    }
    // 3을 받은 수가 같은 경우 ^^
    // 점수가 같은 경우
    else if oneScore == twoScore {
        if numberOne[0] > numberTwo[0] {
            print("1", terminator: " ")
            print(oneScore)
        }
        else {
            print("2", terminator: " ")
            print(twoScore)
        }
    }
    else if threeScore == twoScore {
        if numberThree[0] > numberTwo[0] {
            print("3", terminator: " ")
            print(threeScore)
        }
        else {
            print("2", terminator: " ")
            print(twoScore)
        }
    }
    else if oneScore == threeScore {
        if numberOne[0] > numberThree[0] {
            print("1", terminator: " ")
            print(oneScore)
        }
        else {
            print("3", terminator: " ")
            print(threeScore)
        }
    }

}
