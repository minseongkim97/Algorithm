// 신규 아이디 추천
// 예제 입력                            예제 출력
// "...!@BaT#*..y.abcdefghijklm"        "bat.y.abcdefghi"
// "z-+.^."                             "z--"
// "=.="                                "aaa"
// "123_.def"                           "123_.def"
// "abcdefghijklmn.p"                   "abcdefghijklmn"
import Foundation

func solution(_ new_id:String) -> String {
    let answer: String = new_id.lowercased()
    
    var newID: String = ""
    for i in answer {
        if i.isLetter || i.isNumber || i == "-" || i == "_" || i == "." {
            newID.append(i)
        }
    }
    
    while newID.contains("..") {
        newID = newID.replacingOccurrences(of: "..", with: ".")
    }
    
    while newID.hasPrefix(".") {
        newID.removeFirst()
    }
    
    while newID.hasSuffix(".") {
        newID.removeLast()
    }
    
    if newID.isEmpty {
        newID = "a"
    }
    
    if answer.count >= 16 {
        let index = newID.index(newID.startIndex, offsetBy: 15)
        newID = String(newID[newID.startIndex..<index])
        if newID.hasSuffix(".") {
            newID.removeLast()
        }
    }
    
    if newID.count <= 2{
        while newID.count != 3 {
            newID = newID + String(newID.last!)
        }
    }
    return newID
}

// 다른 사람 풀이

import Foundation

func solution(_ new_id:String) -> String {
    var answer = new_id
    
    answer = step1(id: answer)
    answer = step2(id: answer)
    answer = step3(id: answer)
    answer = step4(id: answer)
    answer = step5(id: answer)
    answer = step6(id: answer)
    answer = step7(id: answer)
    
    return answer
}

func step1(id:String) -> String {
    
    return id.lowercased()
}

func step2(id:String) -> String {
    let specialCharaters = ["-","_","."]
    return id.filter{$0.isLetter || $0.isNumber || specialCharaters.contains(String($0))}.map{String($0)}.joined()
}

func step3(id:String) -> String {
    var newId = id
    while newId.contains("..") {
    newId = newId.replacingOccurrences(of: "..", with: ".")
    }
    return newId
}

func step4(id:String) -> String {
    var newId = id
    while newId.first == "." {
        newId.removeFirst()
    }
    
    while newId.last == "." {
        newId.removeLast()
    }
    return newId
}

func step5(id:String) -> String {
    
    return id.isEmpty ? "a" : id
}

func step6(id:String) -> String {
    var newId = id
    if newId.count >= 16 {
        newId = String(newId.prefix(15))
        while newId.last == "." {
            newId.removeLast()
        }
    }
    return newId
}

func step7(id:String) -> String {
    if id.count == 1 {
        return String(id + id + id)
    }else if id.count == 2 {
        return String(id + String(id.last!))
    }
    return id
}
