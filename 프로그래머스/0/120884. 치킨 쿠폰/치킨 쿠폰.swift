import Foundation

func solution(_ chicken:Int) -> Int {
    var result = 0
    var coupon = chicken
    var restCoupon = 1
    
    while true {
        if coupon/10 == 0 {
            break
        }
        result += coupon/10
        restCoupon = coupon%10
        coupon = coupon/10 + restCoupon
    }
    
    return result
}