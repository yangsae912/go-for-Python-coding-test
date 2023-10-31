
def is_div(number):
    cnt = 0
    if number == 1:
        return False 
    for num in range(1, number+1):
        if number % num == 0:
            cnt +=1 
    if cnt >= 3:
        return False 
    else:
        return True
    
    
n = int(input())

n_list = list(map(int, input().split()))
cnt = 0 

for i in n_list:
    if is_div(i):
        cnt +=1
print(cnt)