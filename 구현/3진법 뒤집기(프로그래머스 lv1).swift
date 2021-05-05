// 3진법 뒤집기
// 에제 입력            예제 출력
// 45                   7
// 125                  229

import Foundation

func solution(_ n:Int) -> Int {
    var num = n
    var digit: Int = 1
    var answer: [Int] = []
    var sum: Int = 0
    while num > 0 {
        answer.append(num%3)
        num /= 3
    }
    for i in answer.reversed() {
        sum += digit * i
        digit *= 3
    }
    return sum
}

// 다른 사람 풀이

func solution(_ n:Int) -> Int {
    let flipToThree = String(n,radix: 3)
    let answer = Int(String(flipToThree.reversed()),radix:3)!
    return answer

}

// 진법 처리 공부!
