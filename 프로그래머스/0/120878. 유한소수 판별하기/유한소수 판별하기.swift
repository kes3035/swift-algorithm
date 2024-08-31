import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    let gcd = getGCD(a, b)
    let integerDividedByGCD_a = a/gcd
    let integerDividedByGCD_b = b/gcd
    let unfactoringNums: [Int] = factoring(integerDividedByGCD_b)
    return unfactoringNums.isEmpty ? 1 : 2
}

func getGCD(_ num1: Int, _ num2: Int) -> Int {
  if num1%num2 == 0 {
      return num2
  } else {
      return getGCD(num2, num1 % num2)
  }
}

func factoring(_ num: Int) -> [Int] {
    var result: [Int] = []
    var num = num
    for i in 1...num {
        //1 이거나 2, 5로 나누어 떨어지는 수이면서 약수이면 넘어감
        if (num%i == 0) {
            guard (i == 1 || i%2 == 0 || i%5 == 0) else {
                result.append(i)
                continue
            }
        }

    }
    
    return result
}