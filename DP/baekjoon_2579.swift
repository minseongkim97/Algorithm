//
//  2579.swift
//  baekjoon_dp
//
//  Created by MIN SEONG KIM on 2022/02/09.
//

import Foundation

let cnt = Int(readLine()!)!

var score = Array(repeating: 0, count: cnt + 1)

for i in 1...cnt {
    let input = Int(readLine()!)!
    
    score[i] = input
}

var dp = Array(repeating: 0, count: cnt + 1)

for i in 1...cnt {
    
    guard i >= 3 else {
        dp[i] = score[i] + score[i - 1]
        continue
    }
    
    dp[i] = max(dp[i - 2] + score[i], dp[i - 3] + score[i] + score[i - 1])
}

print(dp[cnt])


