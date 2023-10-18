def solution(d, budget):
    sum = 0
    cnt = 0 
    d = sorted(d)
    

    for num in d:
        if sum + num <= budget:
            sum += num 
            cnt += 1 
        else:
            break
    return cnt
            