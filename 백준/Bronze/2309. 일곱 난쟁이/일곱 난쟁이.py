from itertools import combinations
array = [int(input()) for _ in range(9)]
    
com = combinations(sorted(array), 7)

for i in com:
    if sum(i) == 100:
        for j in sorted(i):
            print(j)
        break
    
    