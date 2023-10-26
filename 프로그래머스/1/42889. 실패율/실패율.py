from collections import Counter

def solution(N, stages):
    total_players = len(stages)
    counter = Counter(stages)

    fail_rates = []
    for i in range(1, N + 1):
        players_on_stage = counter[i]
        if total_players == 0:
            fail_rate = 0
        else:
            fail_rate = players_on_stage / total_players
        fail_rates.append((i, fail_rate))
        total_players -= players_on_stage

    sorted_fail_rates = sorted(fail_rates, key=lambda x: x[1], reverse=True)
    
    return [stage for stage, _ in sorted_fail_rates]
