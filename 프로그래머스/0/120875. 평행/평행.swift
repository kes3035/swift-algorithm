import Foundation

func solution(_ dots:[[Int]]) -> Int {
    let cord1: [Double] = dots[0].map{Double($0)}
    let cord2: [Double] = dots[1].map{Double($0)}
    let cord3: [Double] = dots[2].map{Double($0)}
    let cord4: [Double] = dots[3].map{Double($0)}
    if (cord1 == cord2) || (cord3 == cord4) || (cord1 == cord3) || 
    (cord2 == cord4) || (cord1 == cord4) || (cord2 == cord3) {
        return 1
    } else if (cord1[1] - cord2[1])/(cord1[0]-cord2[0]) == (cord3[1] - cord4[1])/(cord3[0]-cord4[0]) || (cord1[1] - cord3[1])/(cord1[0]-cord3[0]) == (cord2[1] - cord4[1])/(cord2[0]-cord4[0]) || (cord1[1] - cord4[1])/(cord1[0]-cord4[0]) == (cord2[1] - cord3[1])/(cord2[0]-cord3[0]) {
        return 1    
    } else {
        return 0
    }
}