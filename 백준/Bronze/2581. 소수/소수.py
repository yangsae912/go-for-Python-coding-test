m = int(input())
n = int(input())
case = []

for i in range(m, n + 1):
  yaksoo = 0
  for j in range(1, i + 1):
    if i % j == 0: 
      yaksoo += 1
      if yaksoo > 2: # 시간 초과를 막기위함.
        break
  if yaksoo == 2: 
    case.append(i)

if len(case) > 0:
  print(sum(case))
  print(min(case))
else:
  print(-1)