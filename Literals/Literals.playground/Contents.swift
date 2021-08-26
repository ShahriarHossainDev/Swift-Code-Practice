import UIKit

var greeting = "Hello, playground"
// Integer Literal
let binaryNumber = 0b11111111
print(binaryNumber)
print(1231)

//String & Character Swift literals
let randomCharacter:Character = "C"
let randomString:String = "C is an awesome programming language"
print(randomCharacter)
print(randomString)

//Floating Point Literals
let someFloat = 3.1416
let someAnotherFloat = 3.14e2
print(someFloat)
print(someAnotherFloat)

//Hexadecimal:
let someHex = 0xFp10
let someAnotherHex = 0xFp-12
print(someHex)
print(someAnotherHex)

//Boolean Literals
let result1:Bool = false
let result2:Bool = true
print(result1)
print(result2)

//Type Alias
typealias Raj = Int
var distance: Raj = 100
print(distance)

//Type Inference
// varA is inferred to be of type String
var varA = "Love is life"
print(varA)
  
// varB is inferred to be of type Int
var varB = 143
print(varB)
  
// varC is inferred to be of type Double
var varC = 3.1416
print(varC)
  
// varD is also inferred to be of type Double
var varD = 3 + 0.1416
print(varD)  
