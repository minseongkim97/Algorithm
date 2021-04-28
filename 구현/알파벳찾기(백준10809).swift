// 알파벳 찾기 - 구현
// 예제 입력            예제 출력
// baekjoon             1 0 -1 -1 2 -1 -1 -1 -1 4 3 -1 -1 7 5 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1

//let wordArr = Array(readLine()!)
//var answer = [Int](repeating: -1, count: 26)
//
//for i in 0..<wordArr.count {
//    let char = wordArr[i]
//    answer[Int(char.asciiValue!) - 97] = wordArr.firstIndex(of: char)!
//}
//for i in answer { // print(answer.joined(separator: " ")로 변경 가능
//    print(i, terminator: " ")
//}


// 다른 풀이
//let S = readLine()!
//var R: [String] = []
//for i in 97...122 {
//    R.append(String(Array(S).firstIndex(of: Character(UnicodeScalar(i)!)) ?? -1))
//}
//print(R.joined(separator: " "))


// 아스키코드를 활용하여 원소와 연결시키기! Arr.firstIndex(of: ) 메서드 활용
