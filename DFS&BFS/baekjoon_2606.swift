//
//  2606_바이러스.swift
//  baekjoon_DFS
//
//  Created by MIN SEONG KIM on 2022/03/08.
//

import Foundation

let n = Int(readLine()!)!
let pair = Int(readLine()!)!

var arr = Array(repeating: [Int](), count: n+1)

for _ in 0..<pair {
    let m = readLine()!.split(separator: " ").map { Int(String($0))! }

    arr[m[0]].append(m[1])
    arr[m[1]].append(m[0])
    
}

var count = 0
var visited = Array(repeating: false, count: n+1)
visited[1] = true

func dfs(node: Int) {
    for i in arr[node] where !visited[i] {
        
        visited[i] = true
        count += 1
        dfs(node: i)
    }
}

dfs(node: 1)

print(count)
