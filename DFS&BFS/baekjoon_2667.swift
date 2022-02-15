//
//  2667_단지번호붙이기.swift
//  BFSDFS
//
//  Created by MIN SEONG KIM on 2022/02/16.
//

import Foundation

let n = Int(readLine()!)!
var map = [[Int]]()
for _ in 0..<n {
    map.append(readLine()!.map {Int(String($0))!} )
}
var visit = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)
var queue = [(Int, Int)]()
var complex = 0
var appartmentCount = 1
var appartments = [Int]()

let dx = [0, 0, -1, 1]
let dy = [-1, 1, 0, 0]

for i in 0..<n {
    for j in 0..<n {
        if map[i][j] == 0 || visit[i][j] != 0 { continue }
        complex += 1
        queue.append((i, j))
        visit[i][j] = 1
        appartmentCount = 1
        
        while !queue.isEmpty {
            let cur = queue.removeFirst()
            for dir in 0..<4 {
                let nx = cur.0 + dx[dir]
                let ny = cur.1 + dy[dir]
                if nx < 0 || nx >= n || ny < 0 || ny >= n { continue }
                if map[nx][ny] == 0 || visit[nx][ny] != 0 { continue }
                appartmentCount += 1
                queue.append((nx, ny))
                visit[nx][ny] = appartmentCount
            }
        }
        appartments.append(appartmentCount)
    }
}

print(complex)
for appartment in appartments.sorted() {
    print(appartment)
}
