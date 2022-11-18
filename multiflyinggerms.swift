import Foundation

func solution( _ n: Int, _ t: Int) -> Int {
    var result: Int = 1
    for _ in 1...t {
        result *= n
    }
    return result
}