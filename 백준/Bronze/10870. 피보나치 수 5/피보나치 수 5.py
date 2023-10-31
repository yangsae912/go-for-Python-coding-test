n = int(input())
array = [0,1]
for i in range(n-1):
    array.append(array[i] + array[i+1])
if n != 0:
    print(array[-1])
else:
    print(0)