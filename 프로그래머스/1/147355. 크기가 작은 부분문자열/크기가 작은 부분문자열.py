# def solution(t, p):
#     len_p = len(p)
#     part = []
#     start = 0
#     end = len_p
#     num = 0 
#     list_t = list(t)
#     while end <= len(t):
#         part.append(list_t[start:end])
#         start += 1 
#         end += 1
#     for i in part:
#         int_i = int(''.join(i))
#         if int_i <= int(p):
#             num += 1 
#     print(num)
    
#     return num

def solution(t,p):
    cnt = 0 
    for i in range(len(t)):
        if t[i:i+len(p)] <= p and len(t[i:i+len(p)]) == len(p):
            cnt+=1
    return cnt