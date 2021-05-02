// 나누어 떨어지는 숫자 배열
// 예제 입력            예제 출력
// [5, 9, 7, 10]  5     [5, 10]
// [2, 36, 1, 3]  1     [1, 2, 3, 36]
// [3,2,6]        10    [-1]

func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    var answer = arr.compactMap { $0 % divisor == 0 ? $0 : nil }
    if answer.isEmpty {
        answer = [-1]
    }
    answer.sort()
    
    return answer
}


// 다른 사람 풀이

func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    let array = arr.sorted().filter{ $0 % divisor == 0 }
    return  array == [] ? [-1] : array
}

print(solution([5,9,7,10], 5))

// filter 함수 사용
