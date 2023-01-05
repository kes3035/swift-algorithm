func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var needMoney: Int = 0
    for i in 1...count {
        needMoney += (price)*(i)
    }
    return (money - needMoney > 0) ?  0 : Int64(needMoney) - Int64(money)
}
