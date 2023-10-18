def solution(n):
    x_list = []
    while n != 0:
        x, n = n % 3, n // 3
        x_list.append(x)
        
    return sum((3 ** (len(x_list)-1- i)) * x_list[i] for i in range(len(x_list)))
         
    
    
    