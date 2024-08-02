import Foundation

func solution(_ polynomial:String) -> String {
    guard polynomial.count != 1 else { return polynomial }
    var mappedPolynomial = polynomial.split(separator: " ").map{String($0)}
    var variableArr = mappedPolynomial.filter{$0.contains("x")}
    var constants = mappedPolynomial.filter{Int($0) != nil}.map{Int($0) ?? 0}.reduce(0, +)
    var variables = 0
    
    for variable in variableArr {
        if variable == "x" {
            variables += 1
        } else {
            var coeff = String(variable)
            coeff.removeLast()
            variables += Int(coeff) ?? 0
        }
    }
    if constants == 0 && variables != 0 {
        if variables == 1 {
            return "x"
        } else {
            return "\(variables)x"
        }
    } else if constants != 0 && variables == 0 {
        return "\(constants)"
    } else {
         if variables == 1 {
            return "x + \(constants)"
        } else {
            return "\(variables)x + \(constants)"   
        }
    }
}