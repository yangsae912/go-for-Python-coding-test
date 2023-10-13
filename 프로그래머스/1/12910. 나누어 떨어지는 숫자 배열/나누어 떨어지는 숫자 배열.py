def solution(arr, div):
    answer = []
    for i in arr:
        if i % div == 0:
            answer.append(i)
    if len(answer) == 0:
        answer.append(-1)
    return sorted(answer)
