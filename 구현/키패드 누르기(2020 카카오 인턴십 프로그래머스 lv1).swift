// 키패드 누르기
// 예제 입력                                            예제 출력
// [1, 3, 4, 5, 8, 2, 1, 4, 5, 9, 5]    "right"     "LRLLLRLLRRL"
// [7, 0, 8, 2, 8, 3, 1, 5, 7, 6, 2]    "left"      "LRLLRRLLLRR"
// [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]       "right"     "LLRLLRLLRL"

import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String {
    var result: [String] = []
    var locationR: Int = 0
    var locationL: Int = 0
    
    for i in numbers {
        if i == 1 || i == 4 || i == 7 {
            result.append("L")
            locationL = i
        } else if i == 3 || i == 6 || i == 9 {
            result.append("R")
            locationR = i
        } else {
            var a = i
            if i == 0 { a = 11 }
            
            let RDistance = (((locationR - a) >= 0 ? locationR - a : a - locationR) / 3 + ((locationR - a) >= 0 ? locationR - a : a - locationR) % 3)
            let LDistance = (((locationL - a) >= 0 ? locationL - a : a - locationL) / 3 + ((locationL - a) >= 0 ? locationL - a : a - locationL) % 3)
            if RDistance > LDistance  {
                result.append("L")
                locationL = a
            } else if RDistance == LDistance {
                if hand == "right" {
                    result.append("R")
                    locationR = a
                } else {
                    result.append("L")
                    locationL = a
                }
                
            } else {
                result.append("R")
                locationR = a
            }
        }
    }
    return result.joined()
}

print(solution([1,2,3,4,5,6,7,8,9,0], "right"))

// 각 키와의 거리 = 두 수의 차에서 3을 나눈 몫 + 나머지
