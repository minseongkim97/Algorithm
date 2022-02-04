//
//  9012_괄호.swift
//  baekjoon_stack
//
//  Created by MIN SEONG KIM on 2022/02/05.
//

import Foundation

func VPS(_ parenthesisArray: [String]) -> String {
    var stack = [String]()
    for parenthesis in parenthesisArray {
        if parenthesis == "(" {
            stack.append(parenthesis)
        } else {
            if stack.popLast() == nil {
                return "NO"
            }
        }
    }

    return stack.isEmpty ? "YES" : "NO"
}

let num = Int(readLine()!)!

for _ in 1...num {
    let parenthesisArray = Array(readLine()!.map { String($0) })

    print(VPS(parenthesisArray))
}
