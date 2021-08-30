import UIKit

// an array of integer type
var numbers : [Int] = [2, 4, 6, 8]
print("Array: \(numbers)")

var numbers_1 = [2, 4, 6, 8]
print("Array: \(numbers_1)")

var languages = ["Swift", "Java", "C++"]

// access element at index 0
print(languages[0])   // Swift

// access element at index 2
print(languages[2])   // C++

var numbers_2 = [21, 34, 54, 12]

print("Before Append: \(numbers_2)")

// using append method
numbers_2.append(32)

print("After Append: \(numbers_2)")


var primeNumbers = [2, 3, 5]
print("Array1: \(primeNumbers)")

var evenNumbers = [4, 6, 8]
print("Array2: \(evenNumbers)")

// join two arrays
primeNumbers.append(contentsOf: evenNumbers)

print("Array after append: \(primeNumbers)")


var numbers_3 = [21, 34, 54, 12]
print("Before Insert: \(numbers_3)")

numbers_3.insert(32, at: 1)
print("After insert: \(numbers_3)")

//Modify the Elements of an Array
var dailyActivities = ["Eat","Repeat"]
print("Initial Array: \(dailyActivities)")

// change element at index 1
dailyActivities[1] = "Sleep"

print("Updated Array:  \(dailyActivities)")
 
// Remove an Element from an Array
var languages_1 = ["Swift","Java","Python"]

print("Initial Array: \(languages_1)")

// remove element at index 1
let removedValue = languages_1.remove(at: 1)

print("Updated Array: \(languages_1)")
print("Removed value: \(removedValue)")

//Looping Through Array
// an array of fruits
let fruits = ["Apple", "Peach", "Mango"]

// for loop to iterate over array
for fruit in fruits {
  print(fruit)
}

// Find Number of Array Elements
let evenNumbers_1 = [2,4,6,8]
print("Array: \(evenNumbers_1)")

// find number of elements
print("Total Elements: \(evenNumbers_1.count)")

//Check if an Array is Empty

// array with elements
let numbers_4 = [21, 33, 59, 17]
print("Numbers: \(numbers_4)")

// check if numbers is empty
var  result = numbers_4.isEmpty
print("Is numbers empty? : \(result)")

// array without elements
let evenNumbers_2 = [Int]()
print("Even Numbers: \(evenNumbers_2)")

// check if evenNumbers is empty
result = evenNumbers_2.isEmpty
print("Is evenNumbers empty? : \(result)")

// array with String and integer data
var address: [Any] = ["Scranton", 570]
 
print(address)

var someStrs = [String]()

someStrs.append("Apple")
someStrs.append("Amazon")
someStrs += ["Google"]
for item in someStrs {
   print(item)
}
