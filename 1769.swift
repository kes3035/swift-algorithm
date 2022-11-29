var num = readLine()!
var count = 0
while num.count >= 2 {
    num = String(num.map{Int(String($0))!}.reduce(0, +))
    count += 1
}
print(count)
if num == "3" || num == "6" || num == "9"{
    print("YES")
}else{
    print("NO")
}

