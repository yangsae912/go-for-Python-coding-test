#x만큼 간격이 있는 n개의 숫자 

def solution(x,n):
    return [i for i in range(x,x*n+x,x)] if x != 0 else [0 for _ in range(n)]
    
        