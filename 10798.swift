//다섯줄의 입력을 받아 각 배열의 0번째 인덱스들,1번째 인덱스들을 모아 새로운 배열 완성 후 출력하기

var resultArr: [[String]] = []
var newArr: [String] = []
for _ in 0...4 {
    let arr: String = readLine()!
    var charArr: [String] = []
    for char in arr {
        charArr.append(String(char))
    }
    resultArr.append(charArr)
}
// [ [A,A,B,C,D,D], [a,f,z,z], [0,9,1,2,1], [a,8,E,W,g,6], [P,5,h,3,k,x] ]
repeat {
    for i in 0...4 {
        if resultArr[i].count != 0 {
            var firstString = resultArr[i].first!
            newArr.append(firstString)
            resultArr[i].remove(at: 0)
        }
    }
} while ( resultArr[0].isEmpty && resultArr[1].isEmpty && resultArr[2].isEmpty && resultArr[3].isEmpty && resultArr[4].isEmpty )
print(resultArr)
print(newArr)
