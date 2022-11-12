let number: Int = Int(readLine()!)!
var uphillArr: [[Int]] = []
var numArr: [Int] = []
let input = readLine()!.split(separator: " ").map{Int($0)!}
for i in 0..<(number - 1) where (1 <= number && number <= 1000) {
    if input[i] < input[i + 1] {
        numArr.append(input[i])
        numArr.append(input[i + 1])
    }
    if input[i] >= input[i + 1] {
        uphillArr.append(numArr)
        numArr = []
    }
}

var results: [Int] = []
for i in 0..<uphillArr.count {
    let result = uphillArr[i].max()! - uphillArr[i].min()!
    results.append(result)
}
let solution = results.sorted(by: >)[0]
print(solution)

/*
 12 20 1 3 4 4 11 1
 1) i == 0
 12<20 이므로 numArr에 12, 20 추가
 2) i == 1
 20> 1 이므로 uphillArr에 [12,20]추가 하고 numArr 초기화
 3) i == 2
 1<3 이므로 numArr에 1,3 추가
 4) i == 3
 3<4 이므로 numArr에 3,4추가
 5) i == 4
 4=4 이므로 unhillArr에 [1,3,3,4]추가, 다시 numArr 초기화
 6) i == 5
 4<11 이므로 numArr에 4,11 추가
 7) i == 6
 11>1이므로 uphillArr에 [4,11]추가, 다시 numArr 초기화
 
 uphillArr = [[12,20], [1,3,3,4], [4,11]]
 
 */
