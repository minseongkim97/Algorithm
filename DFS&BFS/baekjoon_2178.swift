//
//  2178_미로탐색.swift
//  BFSDFS
//
//  Created by MIN SEONG KIM on 2022/02/15.
//

import Foundation

let size = readLine()!.split(separator: " ").map { Int($0)! }
let n = size[0], m = size[1]
var graph = [[Int]]()
for _ in 0..<n {
    graph.append(readLine()!.map { Int(String($0))! })
}

var visit = [[Int]](repeating: [Int](repeating: 0, count: m), count: n)

let dx = [0, 0, 1, -1]
let dy = [1, -1, 0, 0]

var queue = [(Int, Int)]()
var min = 0

visit[0][0] = 1
queue.append((0,0))

        
while !queue.isEmpty {
    let cur = queue.removeFirst()
    for dir in 0..<4 {
        let nx = dx[dir] + cur.0
        let ny = dy[dir] + cur.1
        if nx < 0 || nx >= n || ny < 0 || ny >= m { continue }
        if graph[nx][ny] == 0 || visit[nx][ny] != 0 { continue }
        visit[nx][ny] = visit[cur.0][cur.1] + 1
        queue.append((nx, ny))
    }
    
}



print(visit[n-1][m-1])
