import UIKit

enum BoxingPunch {
    case jab
    case cross
    case hook
    case uppercut
}

enum BoxerError: Error {
    case NotThrowingJab(thrownPunch: BoxingPunch)
    case NotThrowingCross(thrownPunch: BoxingPunch)
    case NotThrowingHook(thrownPunch: BoxingPunch)
    case NotThrowingUppercut(thrownPunch: BoxingPunch)
    case RunningOutOfPunchesToThrow
}

class Boxer {
    let speed: Int
    let power: Int
    let allowedPunchesToThrow: [BoxingPunch]
    var numberOfPunchesThrown: Int = 0
    
    init?(speed: Int, power: Int, allowedPunchesToThrow:[BoxingPunch]) {
        self.speed = speed
        guard speed > 70 else {
            return nil
        }
        self.power = power
        guard power > 70 else {return nil}
        self.allowedPunchesToThrow = allowedPunchesToThrow
    
        guard allowedPunchesToThrow.count > 0 else {
            return nil
        }
    }
    
    func throwJab() throws{
        guard numberOfPunchesThrown < allowedPunchesToThrow.count else {
            throw BoxerError.RunningOutOfPunchesToThrow
        }
        let punch = allowedPunchesToThrow[numberOfPunchesThrown]
        if punch != .jab {
            throw BoxerError.NotThrowingJab(thrownPunch: punch)
        }
        numberOfPunchesThrown = numberOfPunchesThrown + 1
    }
    
    
    func throwCross() throws{
        guard numberOfPunchesThrown < allowedPunchesToThrow.count else {
            throw BoxerError.RunningOutOfPunchesToThrow
        }
        let punch = allowedPunchesToThrow[numberOfPunchesThrown]
        if punch != .cross {
            throw BoxerError.NotThrowingCross(thrownPunch: punch)
        }
        numberOfPunchesThrown = numberOfPunchesThrown + 1
    }
    
    
    func throwHook() throws{
        guard numberOfPunchesThrown < allowedPunchesToThrow.count else {
            throw BoxerError.RunningOutOfPunchesToThrow
        }
        let punch = allowedPunchesToThrow[numberOfPunchesThrown]
        if punch != .hook {
            throw BoxerError.NotThrowingHook(thrownPunch: punch)
        }
        numberOfPunchesThrown = numberOfPunchesThrown + 1
    }
    
    
    func throwUpperCut() throws{
        guard numberOfPunchesThrown < allowedPunchesToThrow.count else {
            throw BoxerError.RunningOutOfPunchesToThrow
        }
        let punch = allowedPunchesToThrow[numberOfPunchesThrown]
        if punch != .uppercut {
            throw BoxerError.NotThrowingUppercut(thrownPunch: punch)
        }
        numberOfPunchesThrown = numberOfPunchesThrown + 1
    }
    
    func startThrowingPunches() throws{
        try throwJab()
        try throwHook()
        try throwCross()
        try throwUpperCut()
    }
    
    func throwPunchesCorrectly(throwPunches:() throws -> ()) -> String{
        
        do {
            try throwPunches()
            return "Punches are thrown successfully"
        } catch BoxerError.NotThrowingJab(let thrownPunch) {
            return "The boxer was supposed to throw a jab, But he has thrown a \(thrownPunch)"
        }
        catch BoxerError.NotThrowingCross(let thrownPunch) {
            return "The boxer was supposed to throw a cross, But he has thrown a \(thrownPunch)"
        }
        catch BoxerError.NotThrowingHook(let thrownPunch) {
            return "The boxer was supposed to throw a hook, But he has thrown a \(thrownPunch)"
        }
        catch BoxerError.NotThrowingUppercut(let thrownPunch) {
            return "The boxer was supposed to throw a uppercut, But he has thrown a \(thrownPunch)"
        }
        catch BoxerError.RunningOutOfPunchesToThrow{
            return "Running out of the process Error"
        }
        catch{
            return "An unknown error occur"
        }
    }
}

let correctPunchesToThrow: [BoxingPunch] = [.jab, .hook,.cross,.uppercut]
let wrongPunchesToThrow: [BoxingPunch] = [.uppercut, .cross, .hook,.jab]

let boxer1: Boxer? = Boxer(speed: 40, power: 49, allowedPunchesToThrow: wrongPunchesToThrow)

let boxer2: Boxer? = Boxer(speed: 80, power: 49, allowedPunchesToThrow: wrongPunchesToThrow)

let boxer3: Boxer? = Boxer(speed: 8, power: 90, allowedPunchesToThrow: wrongPunchesToThrow)

let boxer4: Boxer? = Boxer(speed: 78, power: 90, allowedPunchesToThrow: correctPunchesToThrow)

boxer4?.throwPunchesCorrectly(throwPunches: (boxer4?.startThrowingPunches)!)
