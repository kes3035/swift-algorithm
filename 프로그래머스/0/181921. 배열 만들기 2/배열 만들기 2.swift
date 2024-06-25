import Foundation

func solution(_ l:Int, _ r:Int) -> [Int] {
    let result = (l...r)
        .filter({ $0 % 5 == 0 })
        .filter({ String($0).allSatisfy({$0 == "5" || $0 == "0" }) })

    return result.isEmpty ? [-1] : result
}