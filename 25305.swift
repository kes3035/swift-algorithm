let input = readLine()!.split(separator: " ").map{Int($0)!}
let scores = readLine()!.split(separator: " ").map{Int($0)!}
var arr: [Int] = []

for i in 0..<scores.count {
    arr.append(scores[i])
}
print(arr.sorted(by: >)[input[1]-1])
