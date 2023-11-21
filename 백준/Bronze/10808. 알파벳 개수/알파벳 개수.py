import string

lowercase_alphabet = string.ascii_lowercase

string = input()

result = [0 for _ in range(len(lowercase_alphabet))]

for i in string:
    result[lowercase_alphabet.index(i)] += 1 
print(' '.join(str(n) for n in result))