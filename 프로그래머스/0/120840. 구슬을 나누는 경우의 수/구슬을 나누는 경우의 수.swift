import Foundation

func solution(_ balls:Int, _ share:Int) -> Int {
    guard balls != share else { return 1 }
    
    //분모
    let denominator = factorialArr(from: 1, to: share)
    
    //분자
    let nominator = factorialArr(from: balls-share+1, to: balls)

    return calculateFactorial(denominator: denominator, nominator: nominator)
}


func factorialArr(from: Int, to: Int) -> [Int] {
    var resultArr: [Int] = []
    for i in from...to {
        resultArr.append(i)
    }
    return resultArr
}

func calculateFactorial(denominator: [Int], nominator: [Int]) -> Int {
    var reversedDenom = denominator.reversed().map{Int($0)}
    var reversedNom = nominator.reversed().map{Int($0)}
    
    for i in 0..<reversedDenom.endIndex {
        for j in 0..<reversedNom.endIndex {
            let denom = reversedDenom[i]
            let nom = reversedNom[j]
            guard nom%denom == 0 else { continue }
            reversedNom[j] = nom/denom
            reversedDenom[i] = 1
        }
    }
    
    let denom = reversedDenom.reduce(1, *)
    let nom = reversedNom.reduce(1, *)
    
    return nom/denom
}
