//
//  10845.swift
//  baekjoon_queue
//
//  Created by MIN SEONG KIM on 2022/02/07.
//

import Foundation

struct Queue {
    
    var array = [Int]()
    
    mutating func push(_ x: Int) {
        array.append(x)
    }
    
    mutating func pop() -> Int {
        return array.isEmpty ? -1 : array.removeFirst()
    }
    
    func size() -> Int {
        return array.count
    }
    
    func empty() -> Int {
        return array.isEmpty ? 1 : 0
    }
    
    func front() -> Int {
        return array.first ?? -1
    }
    
    func back() -> Int {
        return array.last ?? -1
    }
}

var q = Queue()
for _ in 1...Int(readLine()!)! {
    let command = readLine()!.split(separator: " ")

    switch command[0] {
    case "push":
        q.push(Int(command[1])!)
    case "pop":
        print(q.pop())
    case "size":
        print(q.size())
    case "empty":
        print(q.empty())
    case "front":
        print(q.front())
    case "back":
        print(q.back())
    default:
        break
    }
}
