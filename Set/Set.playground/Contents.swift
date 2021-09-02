import UIKit

var studentId: Set = [112,114,115,113,118,117,116]
print("Students IS: \(studentId)")

// Add Elements to a Set
var employeeID: Set = [23,34,54,63]
print("Initial Set: \(employeeID)")

// Add Elements to a Set
employeeID.insert(32)
print("Update Set: \(employeeID)")

// Remove Elements to a Set
employeeID.remove(23)
print("Update Set: \(employeeID)")

print("Sorted Set: \(employeeID.sorted())")
print("RandomElement Set: \(String(describing: employeeID.randomElement()!))")
print("Contains: \(employeeID.contains(54))")
print("Total Elements: \(employeeID.count)")

// Iterate Over Set
let fruits: Set = ["Apple","Peach", "Mango"]

for fruit in fruits {
    print(fruit)
}

// Union of Two Sets
// first set
let setA: Set = [1, 3, 5]
print("Set A: ", setA)

// second set
let setB: Set = [0, 2, 4]
print("Set B: ", setB)

// perform union operation
print("Union: ", setA.union(setB))

// Intersection between Two Sets
print("Intersection: ", setA.intersection(setB))

// Difference between Two Sets
// perform subtraction operation
print("Subtraction: ", setA.subtracting(setB))

// perform symmetric difference operation
print("Symmetric Difference: ", setA.symmetricDifference(setB))

// first set
let setA_: Set = [1, 2, 3, 5, 4]
print("Set A: ",  setA_)

// second set
let setB_: Set = [1, 2]
print("Set B: ",  setB_)

// check if setB is subset of setA or not
print("Subset: ", setB_.isSubset(of: setA_))

var emptySet = Set<Int>()
print("Set:", emptySet)
