import UIKit

struct Fighter {
    var power: Int
    var speed: Int
    
   mutating func increasePowerBy10()  {
        self.power += 10
    }
    
   mutating func increaseSpeedBy10()  {
        speed = speed + 10
    }
}

class Fighter2 {
    var power: Int
    var speed: Int
    
    init(power: Int, speed: Int) {
        self.power = power
        self.speed = speed
    }
    
     func increasePowerBy10()  {
        self.power += 10
    }
    
     func increaseSpeedBy10()  {
        speed = speed + 10
    }
}
