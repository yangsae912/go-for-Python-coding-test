# def solution(nums):
#     max_len =  len(set(nums))
#     div = len(nums) // 2
    
#     return min(max_len, div)


def solution(nums):
    if len(list(set(nums))) < len(nums) //2:
        return len(list(set(nums)))
    else:
        return len(nums) // 2 