def solution(arr):
    from collections import deque

    if not arr:
        return []
   
    result = deque([arr[0]])
    for i in range(1, len(arr)):
        if arr[i] != result[-1]:
            result.append(arr[i])
    return list(result)         