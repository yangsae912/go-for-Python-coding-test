# def solution(n):
#     list_n = [int(i) for i in str(n)]
    
#     sum_n = sum(nn for nn in list_n)
# #     sum_n = 0
    
# #     for nn in list_n:
# #         sum_n += nn
    
    
#     if n % sum_n == 0:
#         return True
#     else:
#         return False

def solution(n):   
    sum_n = sum(int(i) for i in str(n))
    
    if n % sum_n == 0:
        return True
    else:
        return False
        
        