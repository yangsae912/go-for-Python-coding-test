t = int(input())
for _ in range(t):
    n = int(input())
    bin = []
    while n >= 0:
        i,j = divmod(n,2)
        n = i
        bin.append(j)

        if n <= 0:
            break

    for i in range(len(bin)):
        if bin[i] == 1:
            print(i, end = ' ')