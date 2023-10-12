def solution(n):

    list_n = [int(i) for i in str(n)]
    
    for i in range(len(list_n)):
        for j in range(0,len(list_n)-i-1):
            if list_n[j] < list_n[j+1]:
                list_n[j] , list_n[j+1] = list_n[j+1],list_n[j]

    return int(''.join(map(str, list_n)))