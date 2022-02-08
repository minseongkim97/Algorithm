//
//  2133.swift
//  baekjoon_dp
//
//  Created by MIN SEONG KIM on 2022/02/09.
//

import Foundation

let input = Int(readLine()!)!

var dp = Array(repeating: 0, count: input + 1)
dp[2] = 3
dp[4] = 11
dp[6] = 39

for i in 8...input {
    if i % 2 != 0 {
        continue
    }
    
    dp[i] = 1
}
