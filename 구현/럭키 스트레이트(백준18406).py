// MY CODE
n = input()
lengthForSum = len(n)//2
frontSum = 0
backSum = 0
for i in range(lengthForSum):
    frontSum += int(n[i])
for j in range(lengthForSum,len(n)):
    backSum += int(n[j])

if frontSum == backSum:
    print("LUCKY")
else:
    print("READY")

// ANOTHER
n = input()
d = len(n)//2
print("LUCKY"if sum(map(int, n[:d])) == sum(map(int,n[d:])) else"READY")
