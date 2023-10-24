def solution(strings, n):
    sorted_word = sorted(strings, key = lambda x: (x[n], x))
    
    return sorted_word