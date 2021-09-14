import UIKit

class Lion{
    let name: String
    var power: Int
    var age: Int
    
    var canFight: Bool = false {
        willSet{
            print("willset is called and this is the new value: \(newValue) , old value:\(canFight)")
        }
        didSet{
            print("didset is called and this is the old value: \(oldValue) and new value: \(canFight)")
            
            if canFight && age > 18{
                print("\(name) lion can fight")
            }
        }
    }
    
    init(name: String, power: Int, age: Int) {
        self.name = name
        self.power = power
        self.age = age
    }
    
    init(name: String, power: Int, age: Int, fight: Bool = false) {
        self.name = name
        self.power = power
        self.age = age
        canFight = fight
    }
}

var childLion = Lion(name: "Child Lion", power: 50, age: 10)
childLion.canFight = false

var youngLion = Lion(name: "Father Lion", power: 150, age: 20, fight: false)

youngLion.canFight = true
