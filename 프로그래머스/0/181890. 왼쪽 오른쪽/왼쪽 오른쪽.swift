import Foundation

func solution(_ str_list:[String]) -> [String] {
    
    var firstIndexOfL: Int? = nil
    var firstIndexOfR: Int? = nil
    
    firstIndexOfL = str_list.firstIndex(of: "l")
    firstIndexOfR = str_list.firstIndex(of: "r")
    
    if firstIndexOfL == nil && firstIndexOfR == nil {
        return []
    } else if firstIndexOfL != nil && firstIndexOfR == nil {
        if firstIndexOfL! == 0 {
            return []
        } else {
            return str_list[0..<firstIndexOfL!].map{String($0)}
        }
    } else if firstIndexOfL == nil && firstIndexOfR != nil {
        if firstIndexOfR! == str_list.count - 1 {
                return []
            } else {
                return str_list[(firstIndexOfR!+1)...].map{String($0)}
            }
    } else {
        if firstIndexOfL! < firstIndexOfR! {
            // L이 먼저 나온 경우
            if firstIndexOfL! == 0 {
                return []
            } else {
                return str_list[0..<firstIndexOfL!].map{String($0)}
            }
        } else {
            // R이 먼저 나온 경우
            if firstIndexOfR! == str_list.count - 1 {
                return []
            } else {
                return str_list[(firstIndexOfR!+1)...].map{String($0)}
            }
        }
        
    }

}