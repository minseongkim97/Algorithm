// 시저 암호
// 예제 입력            예제 출력
// "AB"    1            "BC"
// "z"    1             "a"
// "a B z"    4         "e F d"

func solution(_ s:String, _ n:Int) -> String {

    let answer = String(s.map { (a)  in
        if a != " " {
            if (a.asciiValue! >= 65 && a.asciiValue! <= 90 && (Int(a.asciiValue!) + n) > 90) || (a.asciiValue! >= 97 && a.asciiValue! <= 122 && (Int(a.asciiValue!) + n) > 122)  {
                let b = Character(UnicodeScalar(a.asciiValue! + UInt8(n) - UInt8(26)))
                return b
            }
            let b = Character(UnicodeScalar(a.asciiValue! + UInt8(n)))
            return b
        }
        return " "
    })

    return answer
}

// 다른 사람 풀이

func solution(_ s:String, _ n:Int) -> String {
    return s.utf8.map {
        var code = Int($0)
        switch code {
            case 65...90:
                code = (code + n - 65) % 26 + 65
            case 97...122:
                code = (code + n - 97) % 26 + 97
            default:
                break
        }
        return String(UnicodeScalar(code)!)
    }.joined()
}

print(solution("a B z", 4))

// s.utf8.map을 통해서 원소를 모두 asciiValue로 변경
