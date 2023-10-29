# def solution(numbers):
#     new_n = sorted(numbers)
#     result = []
#     for i in range(len(new_n)):
#         for j in range(i+1, len(new_n)):
#             result.append(new_n[i]+new_n[j])
#     return sorted(list(set(result)))

def solution(numbers):
    sort_num = sorted(numbers)
    result = []
    for i in range(len(sort_num)):
        for j in range(i + 1, len(sort_num)):
            result.append(sort_num[i] + sort_num[j])
    return sorted(list(set(result)))