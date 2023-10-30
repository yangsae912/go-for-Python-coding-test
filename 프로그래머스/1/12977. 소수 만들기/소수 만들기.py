# def is_prime(num):
#     if num <= 1:
#         return False
#     elif num <= 3:
#         return True
#     elif num % 3 == 0 or num % 2 == 0:
#         return False

#     i = 5
#     while i * i <= num:
#         if num % i == 0 or num % (i + 2) == 0:
#             return False
#         i += 6
#     return True

# def generate_primes(limit):
#     primes = []
    
#     for num in range(1, limit+1):
#         if is_prime(num):
#             primes.append(num)
#     return primes


# def solution(nums):
    
#     from itertools import combinations

    
#     primes = generate_primes(2997)
#     cnt = 0
#     for num in list(combinations(nums,3)):
#         if sum(num) in primes:
#             cnt +=1
#     return cnt
    
def solution(nums):
    from itertools import combinations
    cnt = 0
    for i in combinations(nums,3):
        if is_div(sum(i)):
            cnt += 1
    return cnt 

def is_div(n):
    result = 0
    for number in range(1, n+1):
        if n % number == 0: result += 1
    if result >= 3:
        return False
    else:
        return True    