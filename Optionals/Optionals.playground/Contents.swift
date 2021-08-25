import UIKit

var myString: String? = nil

if myString != nil {
    print(myString!)
} else {
   print("myString has nil value")
}

// Forced Unwrapping
var myString1: String?

myString1 = "Hello, Swift 4!"

if myString1 != nil {
   print(myString1) // Force-unwrap the value to avoid this warning
} else {
   print("myString has nil value")
}

//Automatic Unwrapping
var myString2: String!
myString2 = "Hello, Swift 4!"

if myString2 != nil {
print(myString2) //Coercion of implicitly unwrappable value of type 'String?' to 'Any' does not unwrap optional
} else {
   print("myString has nil value")
}

//Optional Binding
var myString3:String?
myString3 = "Hello, Swift 4!"

if let yourString = myString3 {
   print("Your string has - \(yourString)")
} else {
   print("Your string does not have a value")
}

let someValue:Int? = 5
print(someValue)
print(someValue!)

let someValue1:Int! = 5
print(someValue1)

//Optional handling with if else statement
var someValue2:Int?
var someAnotherValue1:Int! = 0
        
if someValue2 != nil {
    print("It has some value \(someValue2!)")
} else {
    print("doesn't contain value")
}
        
if someAnotherValue1 != nil {
    print("It has some value \(someAnotherValue1!)")
} else {
    print("doesn't contain value")
}

//Optional handling using if let statement
var someValue3:Int?
var someAnotherValue2:Int! = 0
       
if let temp = someValue3 {
    print("It has some value \(temp)")
} else {
    print("doesn't contain value")
}
        
if let temp = someAnotherValue2 {
    print("It has some value \(temp)")
} else {
    print("doesn't contain value")
}

//Optional handling using guard-let
func testFunction() {
    let someValue:Int? = 5
    guard let temp = someValue else {
        return
    }
    print("It has some value \(temp)")
}

testFunction()

//Optional handling using nil-coalescing operator
var someValue4:Int!
let defaultValue = 5
let unwrappedValue:Int = someValue4 ?? defaultValue
print(unwrappedValue)

var someValue_5:Int? = 10
let defaultValue_1 = 5
let unwrappedValue_1:Int = someValue_5 ?? defaultValue_1
print(unwrappedValue_1)
