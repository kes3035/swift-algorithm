let lengthOfInput = readLine()!
let inputString = readLine()!.map{String($0)}
let inputCharacter = inputString.map{Character($0)}
var result = ""
for char in inputCharacter {
	guard char.isUppercase else { result += String(char).uppercased(); continue }
	result += String(char).lowercased()
	
}
print(result)


