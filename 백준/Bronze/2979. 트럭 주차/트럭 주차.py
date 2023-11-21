a, b, c = map(int, input().split())
data = [map(int ,input().split()) for _ in range(3)]

result = [(x,y )for x, y in data]
x = [i for i in range(result[0][0], result[0][1])]
y = [i for i in range(result[1][0], result[1][1])]
z = [i for i in range(result[2][0], result[2][1])]

new = x + y + z
se_new = list(set(new))

sumup = 0
for i in se_new:
    if new.count(i) == 1:
        sumup += a
    elif new.count(i) == 2:
        sumup += b * 2
    else:
        sumup += c * 3
print(sumup)