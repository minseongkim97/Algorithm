//
//  2011.swift
//  baekjoon_dp
//
//  Created by MIN SEONG KIM on 2022/02/08.
//

import Foundation

// dp[a] = b 의 의미는 "a번째 숫자까지 읽을 수 있는 단어의 갯수는 b개입니다"
// 예외 처리 - 0으로 시작할 때

let cipher = Array(readLine()!).map {Int(String($0))!}
let cnt = cipher.count
var dp = Array(repeating: 0, count: cnt+1)

dp[0] = 1
dp[1] = 1

func numberOfCipher(_ cipher: [Int]) -> Int {
    if cipher[0] == 0 {
        return 0
    } else {
        for i in 2..<cnt+1 {
            let one = cipher[i-1]
            let two = cipher[i-2] * 10 + cipher[i-1]
            
            if one >= 1 && one <= 9 {
                dp[i] += dp[i-1]
            }
            if two >= 10 && two <= 26 {
                dp[i] += dp[i-2]
            }
            dp[i] %= 1000000

        }
        return dp[cnt]
    }
}

print(numberOfCipher(cipher))
