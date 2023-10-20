def solution(s,n):
    import string
    
    all_letters = string.ascii_lowercase
    
    s_result = s.split(" ")
    result = []
    
    for i in s_result:
        modified_i = ''
        for char in i:
            if char not in all_letters:
                modified_char = all_letters[(all_letters.index(char.lower()) + n ) % len(all_letters)].upper()
            else:
                modified_char = all_letters[(all_letters.index(char) + n ) % len(all_letters)]
            modified_i += modified_char
        result.append(modified_i)
    return ' '.join(result)