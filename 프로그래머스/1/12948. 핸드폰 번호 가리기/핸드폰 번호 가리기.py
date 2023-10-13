
def solution(phone_number):
    answer = [num for num in phone_number]
    len_phone = len(answer) - 4
    answer[:len_phone] = '*' * len_phone
    
    phone_num = ''.join(answer)
    return phone_num