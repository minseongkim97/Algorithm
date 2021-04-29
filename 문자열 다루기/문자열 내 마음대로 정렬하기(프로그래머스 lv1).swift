// 문자열 내 마음대로 정렬하기
// 예제 입력                     예제 출력
// ["sun", "bed", "car'],  1    ["car", "bed", "sun"]
// ["abce", "abcd", "cdx"] 2    ["abcd", "abce", "cdx"]

func solution(_ strings:[String], _ n:Int) -> [String] {
    let index = strings[0].index(strings[0].startIndex, offsetBy: n)

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

// 문자열 index와 Array 정렬에 대해 더 공부해봐야겠다.
