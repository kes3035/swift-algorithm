import Foundation

let s1 = readLine()!

for character in s1 {
    if character.isUppercase {
        print(String(character).lowercased(), terminator: "") 
    } else { 
        print(String(character).uppercased(), terminator: "")
    }
}