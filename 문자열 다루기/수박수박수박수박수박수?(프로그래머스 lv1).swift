// 수박수박수박수박수박수?
// 예제 입력            예제 출력
// 3                    "수박수"
// 4                    "수박수박"

func solution(_ n:Int) -> String {
    if n == 1{
        return String("수")
    }
    else if n % 2 == 0 {
        return String(repeating: "수박", count: n/2)
    }
    return String(repeating: "수박", count: n/2) + "수"
}


// 다른 사람 풀이

func solution(_ n:Int) -> String {
    return "\(String(repeating: "수박", count: n / 2))\(n % 2 == 0 ? "" : "수")"
}

print(solution(1))

// 삼항 연산자를 사용해보기
