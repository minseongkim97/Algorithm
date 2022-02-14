//
//  1926_그림.swift
//  BFSDFS
//
//  Created by MIN SEONG KIM on 2022/02/15.
//

// Flood Fill - 어떤 칸과 연결된 영역을 찾는 알고리즘

import Foundation

let size = readLine()!.split(separator: " ").map { Int(String($0))!}
let x = size[0], y = size[1]
var visit = Array(repeating: Array(repeating: false, count: y), count: x)
// 상하좌우를 확인하기 위한 좌표 변수
let dx = [0, 0, 1, -1]
let dy = [1, -1, 0, 0]


var graph = [[Int]]()

for _ in 0..<x {
    graph.append(readLine()!.split(separator: " ").map { Int(String($0))! })
}

var queue = [(Int, Int)]()

var mx = 0
var num = 0

for i in 0..<x {
    for j in 0..<y {
        if graph[i][j] == 0 || visit[i][j] {
            continue
        }
        num += 1
        visit[i][j] = true// 상하좌우를 확인하기 위한 좌표 변수
        let dx = [0, 0, 1, -1]
        let dy = [1, -1, 0, 0]

        queue.append((i,j))
        var area = 0
        while !queue.isEmpty {
            area += 1
            let cur = queue.removeFirst()
            for dir in 0..<4 {
                let nx = cur.0 + dx[dir]
                let ny = cur.1 + dy[dir]
                if nx < 0 || nx >= x || ny < 0 || ny >= y { continue }
                if visit[nx][ny] || graph[nx][ny] != 1 { continue }
                visit[nx][ny] = true
                queue.append((nx, ny))
            }
        }
        mx = max(area, mx)
        
    }
}

print(num)
print(mx)
