n = int(input())
for _ in range(n):
    array = list(map(int, input().split()))
    print(sorted(array)[-3])