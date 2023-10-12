def solution(a,b):
    if a < b:
        cnt = sum(i for i in range(a,b+1,1))
    else:
        cnt = sum(i for i in range(b,a+1,1))
    return cnt