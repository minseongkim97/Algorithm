// 체육복
// 예제 입력            예제 출력
// 5    [2, 4]      [1, 3, 5]    5
// 5    [2, 4]      [3]    4
// 3    [3]         [1]    2
import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var lostArr = lost.sorted()
    var reserveArr = reserve.sorted()
    var answer: Int = 0
    
    for i in lostArr {
        if reserve.contains(i) {
            lostArr.remove(at: lostArr.firstIndex(of: i)!)
            reserveArr.remove(at: reserveArr.firstIndex(of: i)!)
        }
        answer = n - lostArr.count
    }
  
    for i in lostArr {
        if reserveArr.contains(i-1) {
            lostArr.remove(at: lostArr.firstIndex(of: i)!)
            reserveArr.remove(at: reserveArr.firstIndex(of: i-1)!)
            answer += 1
        }
        
        if reserveArr.contains(i+1) && lostArr.contains(i){
            lostArr.remove(at: lostArr.firstIndex(of: i)!)
            reserveArr.remove(at: reserveArr.firstIndex(of: i+1)!)
            answer += 1
        }
        
    }

    return answer
}

// 다른 사람 풀이
// 1.

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {    var losted = lost.filter{!reserve.contains($0)}
    var reserved = reserve.filter{!lost.contains($0)}

    var ans = n - losted.count

    for i in 0..<losted.count {
        var has: Int?

        for j in 0..<reserved.count {
            if losted[i] == reserved[j] - 1 || losted[i] == reserved[j] + 1 {
                has = j
                break
            }
        }

        if let index = has {
            reserved.remove(at: index)
            ans += 1
        }
    }

    return ans
}


// 2.

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var reserve = reserve
    let stdCount = n - lost.count

    return lost.filter { (val) -> Bool in
            if let index = reserve.index(of: val){
                reserve.remove(at: index)
                return true
            }

            if let index = reserve.index(of: val - 1){
                reserve.remove(at: index)
                return true
            }

            if let lastIndex = reserve.index(of: val + 1){
                reserve.remove(at: lastIndex)
                return true
            }

            return false
        }.count + stdCount
}
print(solution(4, [3,1], [2,4]))
