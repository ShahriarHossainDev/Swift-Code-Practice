import UIKit

class Boxer {
    private let maxPunchPower = 500
    var punchPower: Int = 300 {
        didSet {
            if punchPower > maxPunchPower{
                print("The punching power of your boxer instance is too high. lets change it back to old value: \(oldValue)")
                punchPower = oldValue
            }
        }
    }
    var punchSpeed = 200
}

let boxer: Boxer = Boxer()
boxer.punchPower = 600
boxer.punchPower
