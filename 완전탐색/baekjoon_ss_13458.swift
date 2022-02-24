//
//  13458.swift
//  baekjoon_완전탐색
//
//  Created by MIN SEONG KIM on 2022/02/24.
//

import Foundation

let classNum = Int(readLine()!)!

let studentInClass = readLine()!.split(separator: " ").map { Int(String($0))! }

let viewer = readLine()!.split(separator: " ").map { Int(String($0))! }
let b = viewer[0]
let c = viewer[1]

var allViewer: Int = classNum

for i in studentInClass {
    if (i - b) < 0 {
        continue
    }
    else if (i - b) % c == 0 {
        allViewer += (i - b) / c
    } else {
        allViewer += (i - b) / c + 1
    }
}

print(allViewer)
