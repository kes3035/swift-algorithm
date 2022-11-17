func solution(_ A:String, _ B:String) -> Int {
    var aArr: [Character] = []
    var bArr: [Character] = []
    var counting: Int = 0
    
    for char in A {
        aArr.append(char)
    }
    for char in B {
        bArr.append(char)
    }
    if aArr == bArr {
        return 0            // 입력이 시작부터 같아버릴 때 0을 리턴하는 것을 생각안하고 풀었다가 테스트케이스 한개에서 오작동
    }
    print(aArr, bArr)
    while true {
        aArr.insert(aArr[aArr.count - 1], at: 0)
        aArr.remove(at: aArr.count - 1)
        counting += 1
        if aArr == bArr {
            break
        }
        else if counting == aArr.count {
            counting = -1
            break
        }
    }
    return counting
}