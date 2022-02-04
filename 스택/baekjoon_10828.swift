//
//  10828.swift
//  baekjoon_stack
//
//  Created by MIN SEONG KIM on 2022/02/04.
//

import Foundation

class Stack {

    private var array: [Int] = []

    // O(1)
    func push(x: Int) {
        array.append(x)
    }

    // O(1)
    func pop() -> Int {
        return array.isEmpty ? -1 : array.popLast()!
    }

    // O(1)
    func size() -> Int {
        array.count
    }

    // O(1)
    func empty() -> Int {
        return array.isEmpty ? 1 : 0
    }

    // O(1)
    func top() -> Int {
        return array.isEmpty ? -1 : array.last!
    }

}

let numCommand: Int = Int(readLine()!)!
var stack = Stack()

for _ in 1...numCommand {
    if let command = readLine() {
        let arr = command.split(separator: " ")
        switch arr[0] {
        case "push": stack.push(x: Int(arr[1])!)
        case "pop": print(stack.pop())
        case "size": print(stack.size())
        case "top": print(stack.top())
        default: print(stack.empty())
        }
    }
    
}


