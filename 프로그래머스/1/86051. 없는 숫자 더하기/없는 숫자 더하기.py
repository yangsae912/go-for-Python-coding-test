def solution(numbers):
    answer = [i for i in range(10)]
    #answer 리스트의 원소 중, numbers 리스트에 없는 원소 x 에 대해 filter()하고 이를 list에 넣는다 
    return sum(filter(lambda x: x not in numbers, answer))
