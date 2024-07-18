import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    return num_list.sorted()[0...4].map{Int($0)}
}