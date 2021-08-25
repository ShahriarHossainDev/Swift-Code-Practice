import UIKit

var greeting = "Hello, playground"
print(greeting)

// Type Aliases

typealias feet = Int
var distance: feet = 100
print(distance)

// Type Safety
var varA1 = 42 //Cannot assign value of type 'String' to type 'Int'

// Type Inference
// varA is inferred to be of type Int
var varA = 42
print(varA)

// varB is inferred to be of type Double
var varB = 3.14159
print(varB)

// varC is also inferred to be of type Double
var varC = 3 + 0.14159
print(varC)

// create character type variable
var letter: Character = "s"
print(letter)

// create string type variable
var language: String = "swift"
print(language)

// create integer type variable
var number: Int = 3
print(number)

// create boolean type variable
let passCheck: Bool = true
print(passCheck)

let failCheck: Bool = false
print(failCheck)

// create float type variable
let piValue: Float = 3.14
print(piValue)

// create double type variable
let latitude: Double = 27.7007697012432
print(latitude)
