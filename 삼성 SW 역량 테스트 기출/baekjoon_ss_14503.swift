//
//  14503.swift
//  baekjoon_simulation
//
//  Created by MIN SEONG KIM on 2022/02/25.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let m = input[1]
var map = [[Int]]()

let robotInitial = readLine()!.split(separator: " ").map { Int(String($0))! }
var robotCoor: (n: Int, m: Int) = (robotInitial[0], robotInitial[1])
var robotDirection = robotInitial[2]

let dn = [-1, 0, 1, 0]
let dm = [0, 1, 0, -1]

for _ in 0..<n {
    map.append(readLine()!.split(separator: " ").map { Int(String($0))! })
}

map[robotCoor.n][robotCoor.m] = 2
var count = 1

func turnLeft() {
    if robotDirection == 0 {
        robotDirection += 3
    } else {
        robotDirection -= 1
    }
}

//func backward() -> Bool {
//    var backDirection = robotDirection
//    if backDirection == 0 || backDirection == 1 {
//        backDirection += 2
//    } else {
//        backDirection -= 2
//    }
//
//    if map[robotCoor.n + dn[backDirection]][robotCoor.m + dm[backDirection]] == 1 {
//        return false
//    } else {
//        robotCoor.n += dn[backDirection]
//        robotCoor.m += dm[backDirection]
//
//        clean()
//        return true
//    }
//}

func existToCleanArea() -> Bool {
    for _ in 0..<4 {
        turnLeft()
        if map[robotCoor.n + dn[robotDirection]][robotCoor.m + dm[robotDirection]] == 0 {
            robotCoor.n += dn[robotDirection]
            robotCoor.m += dm[robotDirection]
            map[robotCoor.n][robotCoor.m] = 2
            count += 1
            return true
        }
    }
    
    var backDirection = robotDirection
    if backDirection == 0 || backDirection == 1 {
        backDirection += 2
    } else {
        backDirection -= 2
    }
    
    if map[robotCoor.n + dn[backDirection]][robotCoor.m + dm[backDirection]] == 1 {
        return false
    } else {
        robotCoor.n += dn[backDirection]
        robotCoor.m += dm[backDirection]
       
        return true
    }
    
}

func clean() {
    while existToCleanArea() {
    }
}

clean()

print(count)


