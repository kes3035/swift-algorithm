var arr: [Int] = []
let input: Int = Int(readLine()!)!

for _ in 1...input {
    let input = readLine()!.split(separator: " ").map{String($0)}
    let calculator = input[0]
    let num = Int(input[1])!
    if calculator == "add" {
        if !arr.contains(num) {
            arr.append(num)
        }
    }
    else if calculator == "remove" {
        arr = arr.filter{($0) != num}
    }
    else if calculator == "toggle" {
        if arr.contains(num) {
            arr = arr.filter{($0) != num}
        }
        else if !arr.contains(num) {
            arr.append(num)
        }
    }
    else if calculator == "check" {
        if arr.contains(num) {
            print("1")
        }
        else {
            print("0")
        }
    }
    else if calculator == "empty" {
        arr = []
    }
    else if calculator == "all" {
    arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
    }
    
}