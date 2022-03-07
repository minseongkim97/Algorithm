//
//  이코테_구현_상하좌우
//
//  Created by MIN SEONG KIM on 2022/03/08.
//

import Foundation

let n = Int(readLine()!)!
let path = readLine()!.split(separator: " ").map { String($0) }

var location: (x: Int, y: Int) = (1,1)

let dx = [0, 0, -1, 1]
let dy = [-1, 1, 0, 0]
let moveTypes = ["L", "R", "U", "D"]

for i in path {
    var nx = location.x
    var ny = location.y
    
    for j in 0..<4 {
        if i == moveTypes[j] {
            nx += dx[j]
            ny += dy[j]
        }
    }
    
    if nx < 1 || ny < 1 || nx > n || ny > n {
        continue
    }
    
    location.x = nx
    location.y = ny
    
}

print(location.x, location.y)
