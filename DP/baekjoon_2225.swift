//
//  2225.swift
//  baekjoon_dp
//
//  Created by MIN SEONG KIM on 2022/02/09.
//

import Foundation

// 2차원 배열을 사용
// dp[k][n] = dp[k-1][n] + dp[k][n-1]

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = input[0]
let k = input[1]

var dp = Array(repeating: Array(repeating: 0, count: n+1), count: k+1)

for i in 0...k {
    dp[i][0] = 1
}

for i in 1...k {
    for j in 1...n {
        dp[i][j] = (dp[i - 1][j] + dp[i][j - 1]) % 1000000000
    }
}

print(dp[k][n])
