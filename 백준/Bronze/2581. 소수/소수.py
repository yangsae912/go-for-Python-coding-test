#2581 소수 
m = int(input())
n = int(input())

k = []
for i in range(m, n+1):
    y = 0 
    for j in range(1, i+1):
        if i % j == 0:
            y += 1
            if y > 2:
                break
    if y == 2:
        k.append(i)

if len(k) > 0:
    print(sum(k))
    print(min(k))

else:
    print(-1)