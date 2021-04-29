// 문자열 내 마음대로 정렬하기
// 예제 입력                     예제 출력
// ["sun", "bed", "car'],  1    ["car", "bed", "sun"]
// ["abce", "abcd", "cdx"] 2    ["abcd", "abce", "cdx"]

func solution(_ strings:[String], _ n:Int) -> [String] {
    let index = strings[2].index(strings[2].startIndex, offsetBy: n)

    let result = strings.sorted(by : {(s1 : String, s2 : String) -> Bool in
        if s1[index] == s2[index] {
            return s1 < s2
        }
        else {
            return s1[index] < s2[index]
        }
    })

    return result
}

print(solution(["sun", "bed", "car"], 1))

// 다른 사람 풀이

func solution(_ strings:[String], _ n:Int) -> [String] {
    return strings.sorted{  Array($0)[n] == Array($1)[n] ? $0 < $1 :  Array($0)[n] < Array($1)[n] }
}


// 문자열 index와 Array 정렬에 대해 더 공부해봐야겠다.
// strings[0]에서 0 대신 1,2 ,.. 원소의 개수-1까지 들어가도 상관없이 index는 1을 가르킬 것이다.
// 삼항연산자 사용
