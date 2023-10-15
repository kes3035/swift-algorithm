def solution(players, callings):
    solDict = {}
    answer = players
    for index, name in enumerate(players):
        solDict[name] = index;
    for i in range(len(callings)):
        called_player = callings[i] # "kai"
        pre_called_player = answer[solDict.get(called_player) - 1] # "poe"
        solDict[called_player] = solDict.get(called_player) - 1 
        solDict[pre_called_player] = solDict.get(pre_called_player) + 1;
        answer[solDict.get(called_player)] = called_player
        answer[solDict.get(pre_called_player)] = pre_called_player
    return answer