import UIKit

var capitalCity_ = ["Nepal": "Kathmandu", "Italy": "Rome", "England": "London"]
print(capitalCity_)


var capitalCity = ["Nepal": "Kathmandu", "England": "London"]
print("Initial Dictionary: ",capitalCity)

// Add Elements to a Dictionary
capitalCity["Japan"] = "Tokyo"

print("Updated Dictionary: ",capitalCity)
print(capitalCity["Japan"]!)

var studentID = [111: "Eric", 112: "Kyle", 113: "Butters"]
print("Initial Dictionary: ", studentID)
// Change Value of Dictionary
studentID[112] = "Stan"
print("Updated Dictionary: ", studentID)

// Access Elements from Dictionary

var cities = ["Nepal":"Kathmandu", "China":"Beijing", "Japan":"Tokyo"]

print("Dictionary: ", cities)

// cities.keys return all keys of cities
var countryName  = Array(cities.keys)

print("Keys: ", countryName)
// cities.values return all values of cities
print("Values: ", Array(cities.values))

var studentID_1 = [111: "Eric", 112: "Kyle", 113: "Butters"]

print(studentID.count) // Find Number of Dictionary Elements

print("Initial Dictionary: ", studentID_1)

var removedValue  = studentID_1.removeValue(forKey: 112)

print("Dictionary After removeValue(): ", studentID_1)

var classification = ["Fruit": "Apple", "Vegetable": "Broccoli", "Beverage": "Milk"]

print("Keys: Values")
// Iterate Over a Dictionary
for (key,value) in classification {
  print("\(key): \(value)")
}

// Create an Empty Dictionary
var emptyDictionary =  [Int: String]()
print("Empty Dictionary: ",emptyDictionary)
