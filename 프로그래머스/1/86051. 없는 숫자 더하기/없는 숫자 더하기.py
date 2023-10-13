def solution(numbers):
    answer = [i for i in range(10)]
    difference = list(filter(lambda x: x not in numbers, answer))
    return sum(diff for diff in difference)