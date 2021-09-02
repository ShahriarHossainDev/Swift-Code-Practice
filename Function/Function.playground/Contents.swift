import UIKit
import Foundation

// declare a function
func greet() {
    print("Hello World!")
}

// call the function
greet()
print("Outside function")

// function with two parameters
func addNumbers(num1: Int, num2: Int) {
    let sum = num1 + num2
    print("Sum: ",sum)
}

// function with no parameter
func addNumbers() {
    // code
    print("function call with no value")
}

// function call with two values
addNumbers(num1: 3, num2: 4)

// function call with no value
addNumbers()

// function definition
func findSquare (num: Int) -> Int {
    let result = num * num
    return result
}

// function call
var square = findSquare(num: 3)

print("Square:",square)

// sqrt computes the square root
var squareRoot = sqrt(25)

print("Square Root of 25 is",squareRoot)

// pow() comptes the power
var power = pow(2, 3)

print("2 to the power 3 is",power)

//Benefits of Using Functions
// function definition
func getSquare(num: Int) -> Int{
    return num * num
}

for i in 1...3{
    
    // function call
    let result = getSquare(num: i)
    print("Square of \(i) =",result)
}


// Function Parameter with Default Values
func addNumbers_( a: Int = 7,  b: Int = 8) -> Int {
    let sum = a + b
    print("Sum:", sum)
    return sum
}

// function call with two arguments
addNumbers_(a: 2, b: 3)

// function call with one argument
addNumbers_(a: 2)

// function call with no arguments
addNumbers_()

// Function with Argument Label
func sum(of a: Int, and b: Int) {
    print("Sum:", a + b)
}

sum(of: 2, and: 3)

// Omit Argument Labels
func sum_(_ a: Int, _ b: Int) {
    print("Sum:", a + b)
}

sum_(2, 3)

// program to find sum of multiple numbers

func sum1( numbers: Int...) {
    
    var result = 0
    for num in numbers {
        result = result + num
    }
    
    print("Sum = \(result)")
}

// function call with 3 arguments
sum1(numbers: 1, 2, 3)

// function call with 2 arguments
sum1 (numbers: 4, 9)

// Function With inout Parameters
func changeName(name: inout String) {
    if name == "Ross" {
        name = "Joey"
    }
}

var userName = "Ross"
print("Before: ", userName)

// Multiple Return Values

func compute(number: Int) -> (Int, Int, Int) {
    
    let square = number * number
    
    let cube = square * number
    
    return (number, square, cube)
}

var result = compute(number: 5)

print("Number:", result.0)
print("Square:", result.1)
print("Cube:", result.2)

// Nested Function with Parameters
// outer function
func addNumbers2() {
    print("Addition")
    
    // inner function
    func display(num1: Int, num2: Int) {
        print("5 + 10 =", num1 + num2)
    }
    
    // calling inner function with two values
    display(num1: 5, num2: 10)
}

// calling outer function
addNumbers2()

// Nested Function with Return Values
func operate(symbol: String) -> (Int, Int) -> Int {
    
    // inner function to add two numbers
    func add(num1:Int, num2:Int) -> Int {
        return num1 + num2
    }
    
    // inner function to subtract two numbers
    func subtract(num1:Int, num2:Int) -> Int {
        return num1 - num2
    }
    
    let operation = (symbol == "+") ?  add : subtract
    return operation
}

let operation = operate(symbol: "+")
let result_ = operation(8, 3)
print("Result:", result_)

// Swift Function Recursion
// program to count down number to 0

func countDown(number: Int) {
    
    // display the number
    print(number)
    
    // condition to break recursion
    if number == 0 {
        print("Countdown Stops")
    }
    
    // condition for recursion call
    else {
        
        // decrease the number value
        countDown(number: number - 1)
    }
}


print("Countdown:")
countDown(number:3)

//Find factorial of a number
func factorial(num: Int) -> Int {
    
    // condition to break recursion
    if num == 0 {
        return 1
    }
    
    // condition for recursive call
    else {
        return num * factorial(num: num - 1)
    }
    
}

var number1 = 3

// function call
var result2 = factorial(num: number1)
print("The factorial of 3 is", result2)

// Range
// Closed Range
// 1...4 is close range
for numbers in 1...4 {
    print(numbers)
}

// Half-Open Range
for numbers2 in 1..<4 {
    print(numbers2)
}

//One-sided Range
// one-sided range using
// ..< operator
let range1 = ..<2

// check if -9 is in the range
print(range1.contains(-1))

// one-sided range using
// ... operator
let range2 = 2...

// check if 33 is in the range
print(range2.contains(33))

//Access Array Elements Using Swift Range
let languages = ["Swift", "Java", "C"]

// access array elements
print(languages[0...2])

//Overloading with Different Parameter Types
// function with Int type parameter
func displayValue(value: Int) {
    print("Integer value:", value)
}

// function with String type parameter
func displayValue(value: String) {
    print("String value:", value)
}

// function call with String type parameter
displayValue(value: "Swift")

// function call with Int type parameter
displayValue(value: 2)

// Overloading with Different Number of Parameters
// function with two parameters
func display(number1: Int, number2: Int) {
    print("1st Integer: \(number1) and 2nd Integer: \(number2)")
}

// function with a single parameter
func display(number: Int) {
    print("Integer number: \(number)")
}


// function call with single parameter
display(number: 5)

// function call with two parameters
display(number1: 6, number2: 8)

//Function overloading with Argument Label
func display(person1 age:Int) {
    print("Person1 Age:", age)
}

func display(person2 age:Int) {
    print("Person2 Age:", age)
}

display(person1: 25)

display(person2: 38)
