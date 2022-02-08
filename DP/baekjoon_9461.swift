//
//  9461.swift
//  baekjoon_dp
//
//  Created by MIN SEONG KIM on 2022/02/09.
//

import Foundation

var dp = Array(repeating: 0, count: 101)
dp[1...5] = [1,1,1,2,2]

for i in 6...100 {
    dp[i] = dp[i-1] + dp[i-5]
}

for _ in 1...Int(readLine()!)! {
    let k = Int(readLine()!)!
    print(dp[k])
}
