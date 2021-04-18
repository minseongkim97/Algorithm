import itertools

def solution(nums):
    answer = 0
    num_divisor = 0
    sosu_lst = []
    
    sum_lst = list(map(sum,itertools.combinations(nums,3)))
    for i in sum_lst:
        for j in range(1,i+1):
            if i % j == 0:
                num_divisor += 1
        if num_divisor == 2:
            sosu_lst.append(i)
        num_divisor = 0
    answer = len(sosu_lst)
    return answer

test = [1,2,7,6,4]
print(solution(test))

// 4
