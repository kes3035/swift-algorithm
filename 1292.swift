var arr: [Int] = []
for i in 1...45 {
    for _ in 1...i {
        arr.append(i)
    }
}
let num = readLine()!.split(separator: " ").map{Int($0)!}
let from = num[0], to = num[1]

var result: Int = 0
for i in stride(from: from - 1, through: to - 1, by: 1) {
    result += arr[i]
}
print(result)
