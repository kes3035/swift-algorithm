import Foundation

func solution(_ players:[String], _ callings:[String]) -> [String] {
    var result: [String] = players
    var dict: [String : Int] = [:]
    for (index, name) in players.enumerated() {
        dict[name] = index
    }
    for i in 0..<callings.count {
        let calledPlayer = callings[i] 
        let prePlayer = result[dict[calledPlayer]! - 1] 
        dict.updateValue(dict[calledPlayer]! - 1, forKey: calledPlayer)
        dict.updateValue(dict[calledPlayer]! + 1, forKey: prePlayer)
        result[dict[calledPlayer]!] = calledPlayer
        result[dict[prePlayer]!] = prePlayer
    }
    
    return result
}