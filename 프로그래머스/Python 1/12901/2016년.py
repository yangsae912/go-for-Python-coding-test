# def solution(a,b):
#     day = ['FRI','SAT','SUN','MON','TUE','WED','THU']
#     month = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

#     mon_day = []
#     for index, mon in enumerate(month, start = 1 ):
#         mon_day.append((index, mon))
#     result = [ (day) for mon, day in mon_day[:a-1]] 
    
#     return day[(sum(result) + b) % 7 - 1]

def solution(a,b):
    
    day = ['FRI','SAT','SUN','MON','TUE','WED','THU']
    month = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    
    if a > 1:
        return day[(sum(month[:a - 1]) + b) % len(day) - 1]
    else:
        return day[ b % len(day) - 1]
