// 모의고사
// 예제 입력            예제 출력
// [1,2,3,4,5]          [1]
// [1,3,2,4,2]          [1,2,3]

import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let oneAnswer = [1,2,3,4,5]
    let twoAnswer = [2,1,2,3,2,4,2,5]
    let threeAnswer = [3,3,1,1,2,2,4,4,5,5]
    
    var oneCount = 0
    var twoCount = 0
    var threeCount = 0

    
    for i in 0..<answers.count {
        if answers[i] == oneAnswer[i%(oneAnswer.count)] {
            oneCount += 1
        }
        if answers[i] == twoAnswer[i%(twoAnswer.count)] {
            twoCount += 1
        }
        if answers[i] == threeAnswer[i%(threeAnswer.count)] {
            threeCount += 1
        }
    }
    var answer = [oneCount,twoCount,threeCount]
    var result = [Int]()
    let maxCorrectProblem = answer.max()!
    for i in 0..<answer.count {
        if answer[i] == maxCorrectProblem {
            result.append(i+1)
        }
    }
    
    return result
}


// 다른 사람 풀이

func solution(_ answers:[Int]) -> [Int] {
    let answer = (
        a: [1, 2, 3, 4, 5], // index % 5
        b: [2, 1, 2, 3, 2, 4, 2, 5], // index % 8
        c: [3, 3, 1, 1, 2, 2, 4, 4, 5, 5] // index % 10
    )
    var point = [1:0, 2:0, 3:0]

    for (i, v) in answers.enumerated() {
        if v == answer.a[i % 5] { point[1] = point[1]! + 1 }
        if v == answer.b[i % 8] { point[2] = point[2]! + 1 }
        if v == answer.c[i % 10] { point[3] = point[3]! + 1 }
    }

    return point.sorted{ $0.key < $1.key }.filter{ $0.value == point.values.max() }.map{ $0.key }
}

// dictionary 활용
