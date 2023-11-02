s = str(input())
s = s.upper()

max_cnt = 0 
most_common_char = ''
for i in set(s):
    count = s.count(i)
    
    if max_cnt < count:
        max_cnt = count
        most_common_char = i 
    elif max_cnt == count:
        most_common_char = '?'
print(most_common_char)