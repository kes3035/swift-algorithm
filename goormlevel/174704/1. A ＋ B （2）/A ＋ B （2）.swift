import Foundation
let input = readLine()!.split(separator: " ").map{Double($0) ?? 0.0}
let result = input[0]+input[1]
let string = String(format: "%.6f", result)
print(string)