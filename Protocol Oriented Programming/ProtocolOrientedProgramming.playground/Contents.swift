import UIKit

protocol Boxing {
    func throwJab()
    func throwCross()
    func throwHook()
    func thorowUppercut()
    
    func calculateOreralVauleOfBoxer() -> Int
    
    var stamina: Int {get}
    var punchSpeed: Int {get}
    var punchPower: Int {get}
    var accuracy: Int { get }
}


extension Boxing {
    // Default implementation of our function in protocol
    func throwJab() {
        print("Jab")
    }
    func throwHook() {
        print("Hook")
    }
    func throwCross() {
        print("Cross")
    }
    func thorowUppercut() {
        print("upper cut")
    }
    
    func thowBall()  -> String{
        return "New extended default method"
    }
    
    func calculateOreralVauleOfBoxer() -> Int {
        return stamina * punchSpeed * punchPower
    }
}

class Boxer: Boxing {
   
    func calculateOreralVauleOfBoxer() -> Int {
        return 300
    }
    var stamina: Int
    var accuracy: Int
    var punchPower: Int
    var punchSpeed: Int
    
    init(stamina: Int, punchPower: Int, punchSpeed:Int, accuracy: Int) {
        self.stamina = stamina
        self.punchPower = punchPower
        self.punchSpeed = punchSpeed
        self.accuracy = accuracy
    }
}

let myBoxer: Boxing = Boxer(stamina: 300, punchPower: 500, punchSpeed: 400, accuracy: 600)

myBoxer.throwJab()
myBoxer.throwCross()
myBoxer.throwHook()
myBoxer.thorowUppercut()
myBoxer.thowBall()
let av = myBoxer.calculateOreralVauleOfBoxer()
print(av)

protocol KickBoxing:Boxing{
    var kickSpeed:Int {get}
    var kickPower: Int {get}
    func throwKick()
}

class KickBoxer: KickBoxing {
    var kickPower: Int
    var kickSpeed: Int
    func throwKick() {
        print("Kick")
    }
    
    func throwJab() {
        print("Kick Jab")
    }
    func throwHook() {
        print("Kick Hook")
    }
    func throwCross() {
        print("Kick Cross")
    }
    func thorowUppercut() {
        print("Kick upper cut")
    }
    
    var stamina: Int
    var accuracy: Int
    var punchPower: Int
    var punchSpeed: Int
    
    init(stamina: Int, punchPower: Int, punchSpeed:Int, accuracy: Int, kickSpeed: Int, kickPower: Int) {
        self.stamina = stamina
        self.punchPower = punchPower
        self.punchSpeed = punchSpeed
        self.accuracy = accuracy
        self.kickPower = kickPower
        self.kickSpeed = kickSpeed
    }
    
    func calculateOreralVauleOfBoxer() -> Int {
        return stamina * punchSpeed * punchPower * kickSpeed
    }
    
}

let myKickBoxer: Boxing = KickBoxer(stamina: 300, punchPower: 500, punchSpeed: 400, accuracy: 600,kickSpeed: 90, kickPower: 80)

myKickBoxer.throwJab()
myKickBoxer.throwCross()
myKickBoxer.throwHook()
myKickBoxer.thorowUppercut()
let ak = myKickBoxer.calculateOreralVauleOfBoxer()
print(ak)
myKickBoxer.thowBall()


