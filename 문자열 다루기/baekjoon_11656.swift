//
//  11656.swift
//  baekjoon_string_handling
//
//  Created by MIN SEONG KIM on 2022/02/06.
//

import Foundation

var a = readLine()!
var suffix: [String] = [a]

for _ in 1..<a.count {
    a.removeFirst()
    suffix.append(a)
}

print(suffix.sorted().joined(separator: "\n"))


