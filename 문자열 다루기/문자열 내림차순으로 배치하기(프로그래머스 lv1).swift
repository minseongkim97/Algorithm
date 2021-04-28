// 문자열 내림차순으로 배치하기
// 예제 입력            예제 출력
// "Zbcdefg"            "gfedcbZ"

func solution(_ s:String) -> String {
    var strArr = [String]()
    for i in s {
        strArr.append(String(i))
    }
    let answer = strArr.sorted { a, b in
        return a > b
    }
    return answer.joined(separator: "")
}




// 다른 사람 풀이

func solution(_ s:String) -> String {
    return String(s.sorted { $0 > $1 })
}


print(solution("Zbcdefg"))

// String.Element 타입을 처리하는 데 생각을 많이 했던 것 같다.
// String([String.Element])를 사용하면 바로 String이 된다. 
