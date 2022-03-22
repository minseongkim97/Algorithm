# Algorithm
:computer: coding test practice rep

## BFS & DFS
<details>
<summary>BFS & DFS</summary>

```

```
</details>

## Floyd-Warshall & Dijkstra
<details>
<summary>Floyd-Warshall</summary>

```

```
</details>


## 순열 & 조합


<details>
<summary>Factorial</summary>

```
func factorial(_ n: Int) -> Int {
    var n = n
    var result = 1
    while n > 1 {
        result *= n
        n -= 1
    }
    return result
}
```
</details>

<details>
<summary>Permutation(순열)</summary>

```
func permutation<T>(_ elements: [T], _ k: Int) -> [[T]] {
    var result = [[T]]()
    var visited = [Bool](repeating: false, count: elements.count)
    
    func permut(_ now: [T]) {
        if now.count == k {
            result.append(now)
            return
        }
        
        for i in 0..<elements.count {
            if visited[i] == true { continue }
            visited[i] = true
            permut(now + [elements[i]])
            visited[i] = false
        }
    }
    permut([])
    return result
}
```
</details>


<details>
<summary>Combination(조합)</summary>

```
func combination<T>(_ elements: [T], _ k: Int) -> [[T]] {
    var result = [[T]]()
    
    func combi(_ index: Int, _ now: [T]) {
        if now.count == k {
            result.append(now)
            return
        }
        for i in index..<elements.count {
            combi(i + 1, now + [elements[i]])
        }
    }
    combi(0, [])
    return result
}
```
</details>
