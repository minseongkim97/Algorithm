//
//  14890.swift
//  baekjoon_simulation
//
//  Created by MIN SEONG KIM on 2022/02/25.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let length = input[1]

var iniMap = [[Int]]()
var path: Int = 0

for _ in 0..<n {
    iniMap.append(readLine()!.split(separator: " ").map { Int(String($0))! })
}

func change() {
    var temp = [[Int]]()
    
    for i in 0..<n {
        var list = [Int]()
        for j in (0..<n).reversed(){
            list.append(iniMap[j][i])
        }
        temp.append(list)
    }
    iniMap = temp
}

func findPath(map: [[Int]]) -> Int {
    for i in 0..<map.count {

        if Set(map[i]).count == 1 {
            path += 1
            continue
        }
        
        
        var element = map[i][0]
        var sameCount: Int = 0
        
        var road = Array(repeating: 0, count: n)
        var isAvailable: Bool = false
        var isPath: Bool = true
        
        for j in 0..<map[i].count {
            // 경사로가 사용됐던 부분 저장
            
            if road[j] != 0 {
                continue
            }
            
            if map[i][j] == element {
                sameCount += 1
            }
            
            
            // 1 작은 수가 나올때
            else if map[i][j] == element - 1 {
                sameCount = 0
                element -= 1

                if j+length > map[i].count {
                    isPath = false
                    break
                } else {
                    for x in 0..<length {
                        if map[i][j+x] != element {
                            isAvailable = false
                            break
                        }
                        isAvailable = true
                    }
                }
                
                
                
                if isAvailable {
                    for y in 0..<length {
                        road[j+y] = 1
                    }
                    continue
                } else {
                    isPath = false
                    break
                }
                
                
            }
            
            // 1 큰 수가 나올때
            else if map[i][j] == element + 1 {
                element += 1
                if sameCount >= length {
                    sameCount = 1
                    for x in 1...length {
                        road[j-x] = 1
                    }
                } else {
                    sameCount = 0
                    isPath = false
                    break
                }
            }
            
            else {
                sameCount = 0
                isPath = false
                break
            }
        }
        
        if isPath {
            path += 1
        } else {
            isPath = true
        }
    }
    return path
}


findPath(map: iniMap)
change()
print(findPath(map: iniMap))

