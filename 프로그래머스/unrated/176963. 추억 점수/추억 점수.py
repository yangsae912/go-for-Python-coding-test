def solution(name, yearning, photo):
    answer = []
    result = {}
    for x, y in zip(name, yearning):
        result[x] = y
    key_list = list(result.keys())

    for p in photo:
        sum = 0 
        for x in p:
            for key in key_list:
                if x == key:
                    sum += result[key]
        answer.append(sum)
    return answer