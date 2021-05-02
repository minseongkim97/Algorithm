// 가운데 글자 가져오기
// 예제 입력            예제 출력
// "abcde"              "c"
// "qwer"               "we"

func solution(_ s:String) -> String {
    let answerIndex = s.index(s.startIndex, offsetBy: s.count/2)
    if s.count == 1 {
        let answer = s
        return answer
    }
    else if s.count % 2 == 0  {
        let answer = s[answerIndex]
        return String(answer)
    }
    
    else {
        let answerIndexPlus = s.index(s.startIndex, offsetBy: s.count/2 - 1)
        let answer =  String(s[answerIndexPlus]) + String(s[answerIndex])
        return answer
    }
    
}

// 다른 사람 풀이1

func solution(_ s:String) -> String {

    return String(s[String.Index(encodedOffset: (s.count-1)/2)...String.Index(encodedOffset: s.count/2)])
}

// 다른 사람 풀이2

func solution(_ s:String) -> String {
    if Array(s).count % 2 == 0 {
        return String(Array(s)[(s.count/2)-1...(s.count/2)])
    }else{
        return String(Array(s)[s.count/2])
    }
}

