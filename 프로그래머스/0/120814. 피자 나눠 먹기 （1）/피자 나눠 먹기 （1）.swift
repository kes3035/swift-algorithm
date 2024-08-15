import Foundation

func solution(_ n:Int) -> Int {
    let pieceOfPizza = 7
    let numberOfPeople = n
    
    
    if numberOfPeople%pieceOfPizza == 0 {
        return numberOfPeople/pieceOfPizza
    } else {
        return numberOfPeople/pieceOfPizza + 1
    }
}