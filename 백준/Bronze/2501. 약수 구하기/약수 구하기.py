n,k = map(int, input().split())

result = [i for i in range(1, n+1) if n % i == 0]

if k <= len(result): 
    print(result[k-1])
else:
    print(0)