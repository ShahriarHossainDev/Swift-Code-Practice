import UIKit

var greeting = "Hello, playground"

//Ternary Operator
// program to check pass or fail
let marks = 60

// use of ternary operator
let result = (marks >= 40) ? "pass" : "fail"
print("You " + result + " the exam")

// ternary operator to check the number is positive or negative
let num = 15
let result_1 = (num > 0) ? "Positive Number" : "Negative Number"
print(result_1)

// Nested Ternary
// program to check if a number is positive, zero, or negative
let num_1 = 7

let result_2 = (num_1 == 0) ? "Zero" : ((num_1 > 0) ? "Positive" : "Negative")

print("The number is \(result_2).")


// if Statement
let number = 10

// check if number is greater than 0
if (number > 0) {
  print("Number is positive.")
}
print("The if statement is easy")

//
var varA_1:Int = 100

/* Check the boolean condition using if statement */
if varA_1 < 20 {
   /* If condition is true then print the following */
   print("varA is less than 20")

} else {
   /* If condition is false then print the following */
   print("varA is not less than 20")
}

print("Value of variable varA is \(varA_1)")

// if...else

var varA:Int = 100

/* Check the boolean condition using if statement */
if varA == 20 {
   /* If condition is true then print the following */
   print("varA is equal to than 20")

} else if varA == 50 {
   /* If condition is true then print the following */
   print("varA is equal to than 50")

} else {
   /* If condition is false then print the following */
   print("None of the values is matching")
}

print("Value of variable varA is \(varA)")


let number_1 = 10
if (number_1 > 0) {
    print("Number is positive.")
} else {
    print("Number is negative.")
}
print("This statement is always executed.")


// if...else if...else

// check whether a number is positive, negative, or 0.

let number_2 = 0

if (number_2 > 0) {
    print("Number is positive.")
} else if (number_2 < 0) {
    print("Number is negative")
} else {
    print("Number is 0.")
}
print("This statement is always executed")

// nested if

var number_3 = 5
// outer if statement
if (number_3 >= 0) {
  // inner if statement
  if (number_3 == 0) {
      print("Number is 0")
  } else {
      print("Number is positive")
  }
} else {
    print("Number is negative")
}


var varA_:Int = 100
var varB_:Int = 200

/* Check the boolean condition using if statement */
if varA_ == 100 {
   /* If condition is true then print the following */
   print("First condition is satisfied")
    if varB_ == 200 {
      /* If condition is true then print the following */
      print("Second condition is also satisfied")
   }
}

print("Value of variable varA is \(varA_)")
print("Value of variable varB is \(varB_)")

// Switch Statement
var index = 10

switch index {
   case 100 :
      print( "Value of index is 100")
      fallthrough
   case 10,15 :
      print( "Value of index is either 10 or 15")
      fallthrough
   case 5 :
      print( "Value of index is 5")
   default :
      print( "default case")
}

// program to find the day of the week

let dayOfWeek = 4

switch dayOfWeek {
  case 1:
    print("Sunday")
        
  case 2:
    print("Monday")
        
  case 3:
    print("Tuesday")
        
  case 4:
    print("Wednesday")
    fallthrough
        
  case 5:
    print("Thursday")
        
  case 6:
    print("Friday")
        
  case 7:
    print("Saturday")
        
  default:
    print("Invalid day")
}

// Switch Statement with Range
let ageGroup = 33

switch ageGroup {
  case 0...16:
    print("Child")

  case 17...30:
    print("Young Adults")

  case 31...45:
    print("Middle-aged Adults")

  default:
    print("Old-aged Adults")
}

// Tuple in Switch Statement

let info = ("Dwight", 38)

// match complete tuple values
switch info {
  case ("Dwight", 38):
    print("Dwight is 38 years old")

  case ("Micheal", 46):
    print("Micheal is 46 years old")

  default:
    print("Not known")
}


