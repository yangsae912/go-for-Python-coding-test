# def arr_change(n,arr_example):
#     result = []
#     for arr in arr_example:
#         s =""
#         while True:
#             if arr > 0:
#                 s += str(arr % 2)
#                 arr = arr // 2 

#             else:
#                 break
#         s_reverse = s[::-1]

#         result.append(s_reverse.zfill(n))
#     return result






# def solution(n, arr1, arr2):

#     arr1_result, arr2_result = arr_change(n,arr1), arr_change(n,arr2)
#     result_matrix_string = []
    
#     result_matrix = [['' for _ in range(n)] for _ in range(n)]
#     for i in range(n):
#         for j in range(n):
#                 if int(arr1_result[i][j]) != int(arr2_result[i][j]):
#                     result_matrix[i][j] = '#'
#                 else:
#                     if int(arr1_result[i][j]) == 1 and int(arr2_result[i][j]) == 1:
#                         result_matrix[i][j] = '#'
#                     else:
#                         result_matrix[i][j] = '0'
#         result_matrix_string.append(''.join(result_matrix[i]).replace('0', ' '))
#     return result_matrix_string

def get_two(arr):
    result = []
    for n in arr:
        two = ''
        while n != 0:
            i,j = divmod(n,2) 
            n = i
            two += str(j)
        result.append(two[::-1].zfill(len(arr)))
    return result

def solution(n, arr1, arr2):
    arr1_result, arr2_result = get_two(arr1), get_two(arr2)
    total_result = []
    for index in range(len(arr1_result)):
        total = ''
        for j in range(len(arr1_result)):
            sum_arr = int(arr1_result[index][j]) + int(arr2_result[index][j])
            if sum_arr == 1 or sum_arr == 2:
                total += '#'
            else:
                total += ' '
        total_result.append(total)
    return total_result