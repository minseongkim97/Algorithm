//
//  3190.swift
//  baekjoon_simulation
//
//  Created by MIN SEONG KIM on 2022/02/27.
//

import Foundation

let n = Int(readLine()!)!

// 게임 보드
var board = Array(repeating: Array(repeating: 0, count: n+1), count: n+1)

let appleCount = Int(readLine()!)!

for _ in 0..<appleCount {
    let appleArea = readLine()!.split(separator: " ").map { Int(String($0))! }
    board[appleArea[0]][appleArea[1]] = 1
}

// 뱀의 첫 시작 위치
var snakeHead: (Int, Int) = (1,1)
board[1][1] = 2

let changeDirection = Int(readLine()!)!

var changeDirectionInfo = [(Int,String)]()

// 방향 변환 정보
for _ in 0..<changeDirection {
    let info = readLine()!.split(separator: " ").map { String($0) }
    changeDirectionInfo.append((Int(info[0])!, info[1]))
}

// 동서남북
let dx = [0, 0, 1, -1]
let dy = [1, -1, 0, 0]

// 뱀의 머리 방향
var headDirection: Int = 0

// 뱀의 꼬리
var tail = [(Int, Int)]()

// 게임 시간
var gameSec: Int = 0

while true {
    gameSec += 1
    
    // 벽 또는 자기자신의 몸과 부딪혔을 때
    if  snakeHead.0+dx[headDirection] < 1 || snakeHead.0+dx[headDirection] > n || snakeHead.1+dy[headDirection] < 1 || snakeHead.1+dy[headDirection] > n || board[snakeHead.0+dx[headDirection]][snakeHead.1+dy[headDirection]] == 2 {
        break
    }
    
    let oneStepForward = board[snakeHead.0+dx[headDirection]][snakeHead.1+dy[headDirection]]
    
    board[snakeHead.0+dx[headDirection]][snakeHead.1+dy[headDirection]] = 2
    tail.append((snakeHead.0, snakeHead.1))
    snakeHead.0 += dx[headDirection]
    snakeHead.1 += dy[headDirection]
    
    // 사과가 없을 때
    if oneStepForward == 0 {
        board[tail.first!.0][tail.first!.1] = 0
        tail.removeFirst()
    }

    
    // X초가 끝난 뒤 방향 전환
    if !changeDirectionInfo.isEmpty {
        if changeDirectionInfo[0].0 == gameSec {
            // 방향 전환하기
            if changeDirectionInfo[0].1 == "L" {
                switch headDirection {
                case 0:
                    headDirection = 3
                case 1:
                    headDirection = 2
                case 2, 3:
                    headDirection -= 2
                default:
                    break
                }
            } else {
                switch headDirection {
                case 0,1:
                    headDirection += 2
                case 2:
                    headDirection = 1
                case 3:
                    headDirection = 0
                default:
                    break
                }
            }
            
            changeDirectionInfo.removeFirst()
        }
    }
    
    
}

print(gameSec)
