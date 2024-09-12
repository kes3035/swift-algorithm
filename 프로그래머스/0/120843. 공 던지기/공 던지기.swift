import Foundation

func solution(_ numbers:[Int], _ k:Int) -> Int {
    if numbers.count%2 == 0  {         //주어진 배열의 길이가 짝수인 경우
        let cycle = numbers.count/2    //배열의 주기는 길이의 절반
        if k <= cycle {                //주기보다 주어진 수가 작거나 같은 경우
            let index = (k-1)*2
            return numbers[index]
        } else {                       //주기보다 주어진 수가 큰 경우
            let newK = k%cycle         //주기로 나눈 나머지를 이용하여 인덱싱
            if newK == 0 {
                return numbers[numbers.endIndex-2]
            }
            let index = (newK-1)*2
            return numbers[index]
        }
    } else {                           //주어진 배열의 길이가 홀수인 경우
    let newNumbers = numbers + numbers //배열을 한 번 더해 짝수길이의 배열로 만들기
    let cycle = newNumbers.count/2
        if k <= cycle {
            return newNumbers[(k-1)*2]
        } else {
            let newK = k%cycle
            if newK == 0 {
                return newNumbers[newNumbers.endIndex-2]
            }
            let index = (newK-1)*2
            return newNumbers[index]
        }
    }
}
