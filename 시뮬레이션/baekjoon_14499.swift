//
//  14499.swift
//  baekjoon_simulation
//
//  Created by MIN SEONG KIM on 2022/02/25.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let m = input[1]
var diceCor: (x: Int, y: Int) = (input[2], input[3])
let count = input[4]
var diceNumber = [0,0,0,0,0,0]

let dx = [0, 0, -1, 1]
let dy = [1, -1, 0, 0]

var map = [[Int]]()

for _ in 0..<n {
    map.append(readLine()!.split(separator: " ").map { Int(String($0))! })
}

let command = readLine()!.split(separator: " ").map { Int(String($0))! }

for i in command {
    
    if diceCor.x + dx[i-1] >= n || diceCor.x + dx[i-1] < 0 || diceCor.y + dy[i-1] >= m || diceCor.y + dy[i-1] < 0 {
        continue
    }
    
    diceCor.x += dx[i-1]
    diceCor.y += dy[i-1]
    
    switch i {
    case 1:
        diceNumber = [diceNumber[3], diceNumber[1], diceNumber[0], diceNumber[5], diceNumber[4], diceNumber[2]]
    case 2:
        diceNumber = [diceNumber[2], diceNumber[1], diceNumber[5], diceNumber[0], diceNumber[4], diceNumber[3]]
    case 3:
        diceNumber = [diceNumber[4], diceNumber[0], diceNumber[2], diceNumber[3], diceNumber[5], diceNumber[1]]
    case 4:
        diceNumber = [diceNumber[1], diceNumber[5], diceNumber[2], diceNumber[3], diceNumber[0], diceNumber[4]]
    default:
        break
    }
    
    if map[diceCor.x][diceCor.y] == 0 {
        map[diceCor.x][diceCor.y] = diceNumber[5]
    } else {
        diceNumber[5] = map[diceCor.x][diceCor.y]
        map[diceCor.x][diceCor.y] = 0
    }
    
    print(diceNumber[0])
}

