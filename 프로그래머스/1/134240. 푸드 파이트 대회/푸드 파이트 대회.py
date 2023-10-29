# def solution(food):
#     left =[]
#     for num in range(1,len(food)):
#         if food[num] % 2 == 0:
#             while food[num] > 0:
#                 left.append(str(num))
#                 food[num] -= 2 
#         else:
#             while food[num] // 2 >= 1:
#                 left.append(str(num))
#                 food[num] -= 2
# def solution(food):
#     left = []
#     for num in food:
#         if num % 2 == 0:
#             left.extend([str(num)] * (num // 2))
#     return ''.join(left) + '0' + ''.join(left[::-1])

#푸드 파이트 대회 
def solution(food):
    s = ''
    for idx, f in enumerate(food[1:]):
        if f % 2 == 1:
            s += str(idx + 1) * ((f - 1) // 2)
        else:
            s += str(idx + 1) * (f // 2)
    return s + '0' + s[::-1]

  