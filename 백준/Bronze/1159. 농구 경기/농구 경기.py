#1159 농구 경기 

n = int(input())

name = [input() for _ in range(n)]

new_name = [i[0] for i in name]
result = []
for n in set(new_name):
    if new_name.count(n) >= 5:
        
        result.append(n)
if len(result) == 0:
    print("PREDAJA")
else:
    print(''.join([i for i in sorted(result)]))
