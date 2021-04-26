// 약수 - 구현

// 예제 입력
// 2
// 4 2
// 예제 출력
// 8

import Foundation


let n = Int(readLine()!)!
var divArr = readLine()!.split(separator: " ").map {Int($0)!}
divArr.sort()

var answer = 0
if n == 1 {
    answer = divArr[0] * divArr[0]
}
else {
    answer = divArr[0] * divArr[n-1]
}

print(answer)


// 다른 사람 풀이
//readLine()!
//let divArr = readLine()!.split(separator: " ").map {Int($0)!}
//print(divArr.max()! * divArr.min()!)


// min(), max() 메서드를 생각못했던 것 같다. Array 관련 메서드들을 더 공부해 봐야 겠다.


