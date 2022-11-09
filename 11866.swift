let input = readLine()!.split(separator: " ").map{Int($0)!}
let lenght = input[0]
var distance = input[1] - 1
var nums: [Int] = []
var answer: [Int] = []
for i in 1..<lenght + 1 {
    nums.append(i)
}
while true {
    answer.append(nums.remove(at: distance))
    if nums.isEmpty {
        break
    }
    distance = (distance + input[1]-1)%nums.count
}
print("<" + answer.map{String($0)}.joined(separator: ", ") + ">")
