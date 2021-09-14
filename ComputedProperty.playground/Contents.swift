import UIKit

struct Computer {
    var ram: Int
    var cpuPower: Int
    
    // Computed property must be variable and we must specify the data type of the property. Computed properties do not store values and they simply calculate a value and then return that value.
    
    // we can not assign value on computed property  just it is a get only property
    
    var computerPower: Int {
        let result = ram * cpuPower
        return result
    }
    
    var speed: Int {
        get {
            let resutl = ram + cpuPower
            return resutl
        }
        set {
            
            ram = newValue
            cpuPower = newValue + 10
        }
    }
}

var computer = Computer(ram: 100, cpuPower: 2)
let compower = computer.computerPower
print(compower)
let computerSpeed1 = computer.speed

computer.speed = 300
let computerSpeed2 = computer.speed
