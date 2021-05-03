// 소수 찾기
// 예제 입력            예제 출력
// 10                   4
// 5                    3

import Foundation
func solution(_ n:Int) -> Int {
    var count = 0
    for i in 1...n {
        if prime(i) {
            count += 1
        }
    }

    return count
}

// 소수 판별

func prime(_ sosu: Int) -> Bool {

    for i in 2...Int(sqrt(Double(sosu)))+1 {
        if sosu % i == 0 {
            return false
        }
    }
    return true

}


// 에라토스테네스의 채 (n 이하 모든 소수 구하기)

func solution(_ n:Int) -> [Int] {
    var answer: [Int] = []
    var primes:[Bool] = [Bool](repeating:true, count:n+1);
    for i in 2...Int(sqrt(Double(n))+1) {
        if(primes[i]){
            var j = 2
            while i * j <= n {
                primes[i*j] = false
                j += 1

            }
        }
    }
    for i in 2..<n+1 {
        if primes[i] {
            answer.append(i)
        }
    }
    return answer
}

print(solution(10))
