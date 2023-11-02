def is_prime(num):
    if num <= 1:
        return False
    elif num <= 3:
        return True
    elif num % 3 == 0 or num % 2 == 0:
        return False

    i = 5
    while i * i <= num:
        if num % i == 0 or num % (i + 2) == 0:
            return False
        i += 6
    return True

m = int(input())
n = int(input())
case = []
for num in range(m, n+1):
    if is_prime(num):
        case.append(num)
if case:
    print(sum(case))
    print(min(case))
else:
    print(-1)