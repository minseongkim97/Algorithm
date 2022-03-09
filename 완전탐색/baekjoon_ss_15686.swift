//
//  15686.swift
//  baekjoon_구현
//
//  Created by MIN SEONG KIM on 2022/02/07.
//

func combination<T>(_ elements: [T], _ k: Int) -> [[T]] {
    var result = [[T]]()
    
    func combi(_ index: Int, _ now: [T]) {
        if now.count == k {
            result.append(now)
            return
        }
        for i in index..<elements.count {
            combi(i + 1, now + [elements[i]])
        }
    }
    combi(0, [])
    return result
}

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let m = input[1]

var house: [(Int,Int)] = []
var chicken: [(Int,Int)] = []

for i in 1...n {
    let data = readLine()!.split(separator: " ").map { Int(String($0))! }
    
    for c in 0..<n {
        if data[c] == 1 {
            house.append((i,c+1))
        } else if data[c] == 2 {
            chicken.append((i,c+1))
        }
    }
}


let combos = combination(chicken, m)

func getSum(combo: [(Int,Int)]) -> Int {
    var result = 0
    
    // 모든 집에 대하여
    for (hx, hy) in house {
        // 가까운 치킨집 찾기
        var temp = 2*n - 2
        for (cx, cy) in combo {
            temp = min(temp, abs(hx-cx) + abs(hy-cy))
        }
        // 가장 가까운 치킨집까지의 거리를 더하기
        result += temp
    }
    
    // 치킨 거리의 합 반환
    return result
}


// 치킨 거리의 합의 최소를 찾아 출력
var result = 100000000
for combo in combos {
    result = min(result, getSum(combo: combo))
}

print(result)

