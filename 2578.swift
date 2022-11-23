var bingo: [[Int]] = []
var willRemoveNumber: [Int] = []
var count = 0

for _ in 1...5 {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    bingo.append(input)
}
for _ in 1...5 {
    let num = readLine()!.split(separator: " ").map{Int($0)!}
    willRemoveNumber.append(num[0])
    willRemoveNumber.append(num[1])
    willRemoveNumber.append(num[2])
    willRemoveNumber.append(num[3])
    willRemoveNumber.append(num[4])
}
for k in willRemoveNumber {
    var bingoCount: Int = 0
    for i in 0...4 {
        for j in 0...4 {
            if bingo[i][j] == k {
                bingo[i][j] = 0
                count += 1
            }
        }
    }
    if bingo[0] == [0,0,0,0,0] || bingo[1] == [0,0,0,0,0] || bingo[2] == [0,0,0,0,0] || bingo[3] == [0,0,0,0,0] || bingo[4] == [0,0,0,0,0]
        || (bingo[0][0] == 0 && bingo[1][0] == 0 && bingo[2][0] == 0 && bingo[3][0] == 0 && bingo[4][0] == 0)
        || (bingo[0][1] == 0 && bingo[1][1] == 0 && bingo[2][1] == 0 && bingo[3][1] == 0 && bingo[4][1] == 0)
        || (bingo[0][2] == 0 && bingo[1][2] == 0 && bingo[2][2] == 0 && bingo[3][2] == 0 && bingo[4][2] == 0)
        || (bingo[0][3] == 0 && bingo[1][3] == 0 && bingo[2][3] == 0 && bingo[3][3] == 0 && bingo[4][3] == 0)
        || (bingo[0][4] == 0 && bingo[1][4] == 0 && bingo[2][4] == 0 && bingo[3][4] == 0 && bingo[4][4] == 0)
        || (bingo[0][0] == 0 && bingo[1][1] == 0 && bingo[2][2] == 0 && bingo[3][3] == 0 && bingo[4][4] == 0)
        || (bingo[0][4] == 0 && bingo[1][3] == 0 && bingo[2][2] == 0 && bingo[3][1] == 0 && bingo[4][0] == 0) {
        bingoCount += 1
    }
    if bingoCount == 3 {
        print(count)
        break
    }
}

