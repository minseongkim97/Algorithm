//
//  10799.swift
//  baekjoon_stack
//
//  Created by MIN SEONG KIM on 2022/02/05.
//

import Foundation

let parenthesisArray = Array(readLine()!.map {String($0)})
var stack = [String]()
var stickNum: Int = 0
var front = "("


for parenthesis in parenthesisArray {
    if parenthesis == "(" {
        stack.append("(")
        front = "("
    } else {
        stack.removeLast()
        if front == ")" {
            stickNum += 1
        } else {
            stickNum += stack.count
        }
        front = ")"
    }
}

print(stickNum)
