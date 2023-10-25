def solution(nums):
    max_len =  len(set(nums))
    div = len(nums) // 2
    
    return min(max_len, div)