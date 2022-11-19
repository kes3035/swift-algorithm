/*
 블록 부수는 시간은 2초, 블록을 놓는 시간은 1초
 높이를 맞추는 최소 시간과 그 경우 땅의 높이
 
 시간은 같은데 땅의 높이가 여러개일 경우 높이가 제일 높은 것 출력
 */





let nums = readLine()!.split(separator: " ").map{Int($0)!}
let n = nums[0], m = nums[1]
var b = nums[2]
var heightArr: [[Int]] = []
var maxheight: Int = 0
var minHeight: Int = 256
var resultArr: [[Int]] = []

for _ in 1...n {
    let arr = readLine()!.split(separator: " ").map{Int($0)!}
    if arr.max()! > maxheight {
        maxheight = arr.max()!
    }
    if arr.min()! < minHeight {
        minHeight = arr.min()!
    }
    heightArr.append(arr)
}

/*  heightArr example
 [ [64, 64, 64, 64],
   [64, 64, 64, 64],
   [64, 64, 64, 64],
   [66, 64, 64, 63] ]
 */

for i in 0..<n {
    for j in 0..<m {
        for k in stride(from: maxheight, through: minHeight, by: -1) {
            var block = b
            var time = 0
            var counting = 0
            //var equalOrBiggersCount = 0
            if heightArr[i][j] < k {
                block -= 1
                time += 1
                
                block += 1*counting
            }
            else if heightArr[i][j] > k {
                block += 1
                time += 2
            }
            if block < 0 {
                time = 0
                block = b
                counting += 1
                continue
            }
            else if block >= 0 {
                let arr = [time, k]
                resultArr.append(arr)
            }
        }
    }
}
//for i in 0..<resultArr.count {
//    if resultArr[i]
//}
print(resultArr)
