import string
all_letters = string.ascii_lowercase
s = str(input())
new_s = s.split(" ")
result = ''
for i in new_s:
    for j in i:
        
        if j.isalpha():
            index = all_letters.index(j.lower())  # 소문자로 변환하여 인덱스 계산
            if index <= 12:
                index = (index + 13) % 26
            else:
                index = (index - 13) % 26
            if j.isupper():
                result += all_letters[index].upper()
            else:
                result += all_letters[index]
        
        else:
            result += j
    result += " "

print(result)
