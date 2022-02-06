//
//  11655.swift
//  baekjoon_string_handling
//
//  Created by MIN SEONG KIM on 2022/02/06.
//

import Foundation

var solution = ""
for i in readLine()! {
    
    if (i.asciiValue! >= 65 && i.asciiValue! <= 90) {
        if i.asciiValue!+13 > 90 {
            solution += String(UnicodeScalar(i.asciiValue! - 13))
        } else {
            solution += String(UnicodeScalar(i.asciiValue! + 13))
        }
        
    } else if (i.asciiValue! >= 97 && i.asciiValue! <= 122) {
        if i.asciiValue!+13 > 122 {
            solution += String(UnicodeScalar(i.asciiValue! - 13))
        } else {
            solution += String(UnicodeScalar(i.asciiValue! + 13))
        }
    } else {
        solution += String(i)
    }
}

print(solution)


