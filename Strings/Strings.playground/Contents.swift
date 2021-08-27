import UIKit

var greeting = "Hello, playground"

// create character variable
var letter: Character = "H"
print(letter)  // H

var symbol: Character = "@"
print(symbol)  // @

// create string type variables
let names: String = "Swift"
print(names)

let message = "I love Swift."
print(message)

// String Operations
// Compare Two Strings

let str1 = "Hello, world!"
let str2 = "I love Swift."
let str3 = "Hello, world!"

// compare str1 and str2
print(str1 == str2)

// compare str1 and str3
print(str1 == str3)

// Join Two Strings
var greet = "Hello, "
let name = "Jack"

// using + operator
var result = greet + name
print(result)

//using =+ operator
greet +=  name
print(greet)

// Find Length of String
let messages = "Hello, World!"

// count length of a string
print(messages.count) // 13

// Escape Sequences
// use the escape character
var example = "This is \"String\" class"

print(example)
// Output: This is "String" class

// String Interpolation
let name_s = "Swift"

var message_s = "This is \(name_s) programming."
print(message_s)

// Swift Multiline String
// multiline string
var str: String = """
Swift is awesome
I love Swift
"""
print(str)


var varA = 20
let constA = 100
var varC:Float = 20.0

var stringA = "\(varA) times \(constA) is equal to \(varC * 100)"
print( stringA )

// String Length
var var_A = "Hello, Swift 4!"
print( "\(var_A), length is \((var_A.count))" )

// String Iterating
for chars in "ThisString" {
   print(chars, terminator: " ")
}

// Unicode Strings
var unicodeString = "Dog???"

print("UTF-8 Codes: ")
for code in unicodeString.utf8 {
   print("\(code) ")
}

print("\n")

print("UTF-16 Codes: ")
for code in unicodeString.utf16 {
   print("\(code) ")
}
