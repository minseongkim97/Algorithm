// k번째수
// 예제 입력                                                            예제 출력
// [1, 5, 2, 6, 3, 7, 4]    [[2, 5, 3], [4, 4, 1], [1, 7, 3]]           [5, 6, 3]

import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var answer = [Int]()
    for i in 0...commands.count-1 {
        var answerArr = Array(array[commands[i][0]-1...commands[i][1]-1])
        answerArr.sort()
        answer.append(answerArr[commands[i][2]-1])
    }

    return answer
}


// 다른 사람 풀이

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    return commands.map({array[($0[0]-1)...($0[1]-1)].sorted()[$0[2]-1]})

}
print(solution([1,5,2,6,3,7,4], [[2,5,3],[4,4,1],[1,7,3]]))


// map 함수 많이 사용해보기

