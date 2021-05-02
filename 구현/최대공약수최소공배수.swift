// 최대공약수, 최소공배수

func gcd(_ a: Int, _ b: Int) -> Int {
    let mod: Int = a % b
    return mod == 0 ? min(a, b) : gcd(b, mod)
}
 
func lcm(_ a: Int, _ b: Int) -> Int {
    return a * b / gcd(a, b)
}
 
func solution(_ n:Int, _ m:Int) -> [Int] {
    return [gcd(n, m), lcm(n, m)]
}

print(solution(8, 30))
