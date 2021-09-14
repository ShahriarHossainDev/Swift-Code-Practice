import UIKit

class Lion {
    let name: String
    var speed: Int
    var power: Int
    
    
    static var numberOfLions: Int = 0
    init(name: String , speed: Int , power: Int) {
        self.name = name
        self.speed = speed
        self.power = power
        
        Lion .numberOfLions += 1
    }
}

let lion1 = Lion(name: "A", speed: 10, power: 2)
print(Lion.numberOfLions)

let lion2 = Lion(name: "B", speed: 20, power: 3)
print(Lion.numberOfLions)

let lion3 = Lion(name: "C", speed: 30, power: 4)
print(Lion.numberOfLions)

let lion4 = Lion(name: "D", speed: 40, power: 5)
print(Lion.numberOfLions)

let lion5 = Lion(name: "E", speed: 50, power: 6)
 print(Lion.numberOfLions)
