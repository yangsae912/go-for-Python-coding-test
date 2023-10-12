def solution(n):

    list_n = [int(i) for i in str(n)]
    sorted_list = sorted(list_n, reverse=True)

    return int(''.join(map(str,sorted_list)))