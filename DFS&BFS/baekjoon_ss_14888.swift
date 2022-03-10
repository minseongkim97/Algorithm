//
//  14888.swift
//  baekjoon_DFS
//
//  Created by MIN SEONG KIM on 2022/03/09.
//

let count = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").map { Int(String($0))! }
var operatorsNum = readLine()!.split(separator: " ").map { Int(String($0))! }

var minValue = 100000000
var maxValue = -100000000

func dfs(idx: Int, sum: Int) {
    
    if idx == count {
        minValue = min(minValue, sum)
        maxValue = max(maxValue, sum)
        
    }
    
    else {
        if operatorsNum[0] > 0 {
            operatorsNum[0] -= 1
            // 뺀 상태로 다음 depth의 노드에게 전달
            dfs(idx: idx+1, sum: sum + nums[idx])
            // 같은 depth에 있는 연산에서는 operatorsNum의 개수가 같게 시작해야하기 때문이다.
            operatorsNum[0] += 1
        }
        
        if operatorsNum[1] > 0 {
            operatorsNum[1] -= 1
            dfs(idx: idx+1, sum: sum - nums[idx])
            operatorsNum[1] += 1
        }
        
        if operatorsNum[2] > 0 {
            operatorsNum[2] -= 1
            dfs(idx: idx+1, sum: sum * nums[idx])
            operatorsNum[2] += 1
        }
        
        if operatorsNum[3] > 0 {
            operatorsNum[3] -= 1
            dfs(idx: idx+1, sum: sum / nums[idx])
            operatorsNum[3] += 1
        }

    }
}

dfs(idx: 1, sum: nums[0])

print(maxValue)
print(minValue)


// 다른 방식
let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
let oper = readLine()!.split(separator: " ").map{Int(String($0))!}  //+,-,x,/

var maxN = -1000000000
var minN = 1000000000

func dfs(_ idx: Int, _ plus: Int, _ sub: Int, _ mul: Int, _ div: Int, _ tot: Int){
    if idx == n {
        maxN = max(maxN,tot)
        minN = min(minN,tot)
        return
    }

    if plus < oper[0]{
        dfs(idx+1, plus+1, sub,mul,div,tot+arr[idx])
    }
    if sub < oper[1]{
        dfs(idx+1, plus, sub+1,mul,div,tot-arr[idx])
    }
    if mul < oper[2]{
        dfs(idx+1, plus, sub,mul+1,div,tot*arr[idx])
    }
    if div < oper[3]{
        dfs(idx+1, plus, sub,mul,div+1,tot/arr[idx])
    }
}

dfs(1,0,0,0,0,arr[0])
print(maxN)
print(minN)
