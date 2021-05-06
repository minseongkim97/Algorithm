// 예산
// 예제 입력                예제 출력
// [1,3,2,5,4]   9          3
// [2,2,3,3]    10          4

import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    let dArr = d.sorted()
    var budgt = budget
    var result: Int = 0

    if dArr[0] > budget {
        return 0
    }


    for i in dArr {
        if budgt <= 0 {
            if budgt == 0 {
                return result
            } else {
                return result - 1
            }
        } else {
            budgt -= i
            result += 1
        }
    }

    return result
}


// 다른 사람 풀이

func solution(_ d:[Int], _ budget:Int) -> Int {
    var budget = budget

    return d.sorted().filter{
        budget = budget - $0
        return budget >= 0
    }.count
}

print(solution([1,3,2,5,4], 9))
