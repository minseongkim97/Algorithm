//
//  타겟넘버.swift
//  PG_DFS
//
//  Created by MIN SEONG KIM on 2022/03/08.
//

import Foundation

func solution(_ numbers:[Int], _ target:Int) -> Int {
    var count = 0
    
    func dfs(index: Int, sum: Int) {
        if index + 1 == numbers.count && sum == target {
            count += 1
            return
        }
        
        guard index + 1 < numbers.count else { return }
        
        dfs(index: index + 1, sum: sum + numbers[index+1])
        dfs(index: index + 1, sum: sum - numbers[index+1])
    }
    
    dfs(index: -1, sum: 0)
    
    return count
}

print(solution([1,1,1,1,1], 3))
print(solution([4,1,2,1], 4))
