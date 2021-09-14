import UIKit

class Computer {
    var power: Int
    var speed: Int
    var ram: Int
    
    
    init(power: Int, speed: Int, ram: Int) {
        self.power = power
        self.speed = speed
        self.ram = ram
    }
    
    lazy var cpuPower:Int = {
        return (10000 * 2) + (2000 * 2)
    }()
    
    var computerOverallValue: Int {
        return power * speed * ram * cpuPower
    }
}

let com:Computer = Computer(power: 4, speed: 2, ram: 3)

com.cpuPower
com.computerOverallValue
