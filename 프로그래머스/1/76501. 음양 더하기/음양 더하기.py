def solution(absolutes, signs):
    for i in range(len(absolutes)):
        if signs[i] == False:
            absolutes[i] = absolutes[i] * -1 
    return sum( j for j in absolutes)