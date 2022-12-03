func solution(_ M:Int, _ N:Int) -> Int {
    var count = 0
    if M == N && (M != 1 && N != 1) {
        count = (M - 1) + (M*(M - 1))
    }
    else if M < N {
        count = (M - 1) + (M*(N - 1))
    }
    else if N < N {
        count = (N - 1) + (N*(M - 1))
    }
    else if N == 1 && M == 1 {
        count = 0
    }
    return count
}
