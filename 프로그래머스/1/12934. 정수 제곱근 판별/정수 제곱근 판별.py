def solution(n):
    import math
    
    x = math.sqrt(n)
    if x.is_integer():
        return int(x+1)** 2
    else:
        return -1