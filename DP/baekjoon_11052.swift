//
//  11052.swift
//  baekjoon_dp
//
//  Created by MIN SEONG KIM on 2022/02/08.
//

import Foundation

// 최대값이 반복된다!
// dp[i] = dp[i-j] + dp[j]
// ex) dp[5] = (dp[4] + dp[1], dp[3] + dp[2]) 이렇게 저장해둔 각 최댓값을 더해 최종 최댓값을 구해낸다.

let n = Int(readLine()!)!
let price = readLine()!.split(separator: " ").map{ Int($0)! }
var dp = [Int](repeating: 0, count: n+1)

for i in 0..<n {
    dp[i+1] = price[i]
}


for i in 2...n {
    for j in 1...i-1 {
        dp[i] = max(dp[i], dp[i-j] + dp[j])
    }
}
print(dp[n])

