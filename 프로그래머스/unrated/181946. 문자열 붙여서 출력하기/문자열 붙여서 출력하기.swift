import Foundation

let inp = readLine()!.map{String($0)}
var result = ""
for character in inp {
    guard character != " " else { continue }
    result += character
}
print(result)
