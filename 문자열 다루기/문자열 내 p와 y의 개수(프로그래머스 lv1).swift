// 문자열 내 p와 y의 개수

import Foundation

func solution(_ s:String) -> Bool
{
    var ans:Bool = false
    let a = Array(s.lowercased())
    var pArr = [Character]()
    var yArr = [Character]()

    for i in 0..<a.count {
        if a[i] == "p" {
            pArr.append(a[i])
        } else if a[i] == "y" {
            yArr.append(a[i])
        }
    }
    if pArr.count == yArr.count {
        return true
    } else {
        return ans
    }
}


// 다른 사람 풀이

func solution(_ s:String) -> Bool
{
    return s.lowercased().filter { $0 == "p" }.count == s.lowercased().filter { $0 == "y" }.count
}

print(solution("Pyy"))


// filter 메서드와 component 메서드를 알아 갔다.
