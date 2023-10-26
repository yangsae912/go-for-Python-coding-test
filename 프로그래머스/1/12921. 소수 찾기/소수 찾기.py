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
def solution(n):
    cnt = 0 
    for num in range(1, n+1):
        if is_prime(num):
            cnt += 1
    return cnt 