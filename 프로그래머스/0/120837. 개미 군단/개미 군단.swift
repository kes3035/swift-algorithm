import Foundation

func solution(_ hp:Int) -> Int {
    let general = 5
    let soldier = 3
    let work = 1
    var result = 0
    var remainHP = hp
    
    if remainHP/general != 0 {
        result += remainHP/general
        remainHP = remainHP%general
    } 
    
    if remainHP/soldier != 0 {
        result += remainHP/soldier
        remainHP = remainHP%soldier
    }
    
    result += remainHP/work
    remainHP = remainHP%work
    
    return result
}