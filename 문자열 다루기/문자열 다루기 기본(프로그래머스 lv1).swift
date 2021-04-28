// 문자열 다루기 기본
// 예제 입력            예제 출력
// "a234"               false
// "1234"               true

func solution(_ s:String) -> Bool {
    let sArr = Array(s)
    if sArr.count == 4 || sArr.count == 6 {
        if Int(s) != nil {
            return true
        }
    }

    return false
}

solution("a234")
