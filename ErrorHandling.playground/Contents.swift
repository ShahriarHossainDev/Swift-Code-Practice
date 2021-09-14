import UIKit

enum BoxingError: Error{
    case notHavingEnoghPower
    case notHavingEnoghSpeed
}

class Boxer{
    var power: Int
    var speed: Int
    
    init(power: Int, speed: Int) {
        self.power = power
        self.speed = speed
    }
    
    private func throwJab(power:Int, speed: Int) throws {
        let boxingError: BoxingError
        
        if power < 70 {
            boxingError = .notHavingEnoghPower
            throw boxingError
        }
        else if speed < 70{
            boxingError = .notHavingEnoghSpeed
            throw boxingError
        }
        else{
            print("Boxer throws Jab")
        }
    }
    
    func startThrowingJab() -> String {
        do {
            try throwJab(power: self.power, speed: self.speed)
            return "Jab is thrown"
        } catch BoxingError.notHavingEnoghPower {
            return "The boxer does not have power in order to throw the jab"
        } catch BoxingError.notHavingEnoghSpeed{
            return "The boxer does not have speed in order to throw the jab"
        }
        catch {
            // Catch any other errors
            return "This is uknown error that is occur here."
        }
    }
}


let boxer: Boxer = Boxer(power: 40, speed: 40)
let msg = boxer.startThrowingJab()
print(msg)

print(Boxer(power: 30, speed: 80).startThrowingJab())
print(Boxer(power: 80, speed: 60).startThrowingJab())
print(Boxer(power: 90, speed: 80).startThrowingJab())
