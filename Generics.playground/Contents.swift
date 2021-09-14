import UIKit

enum MartialArts{
    case boxing, kickboxing, taekwondo, karate
}

struct MartialartCoachType{
    var coach: MartialArts
}

var boxingC = MartialartCoachType(coach: .boxing)
var kickBoxingC = MartialartCoachType(coach: .kickboxing)
var taekwondoC = MartialartCoachType(coach: .taekwondo)
var karateC = MartialartCoachType(coach: .karate)

print(boxingC.coach)
print(kickBoxingC.coach)
print(taekwondoC.coach)
print(karateC.coach)

struct Boxer{
    let name: String
    var punchSpeed: Int
    var purchPower: Int
}

struct KickBoxer{
    let name: String
    var punchSpeed: Int
    var punchPower: Int
    var kickSpeed: Int
    var kickPower: Int
}


struct Coach<T> {
    var name: String
    var martialArtType:T
}

let boxerS = Boxer(name: "Shohidul", punchSpeed:300, purchPower:330)
let coach = Coach(name: "Shahadat", martialArtType: boxerS)

let kickBoxer = KickBoxer(name: "Roni", punchSpeed: 22, punchPower: 33, kickSpeed: 44, kickPower: 55)
let coach2 = Coach(name: "Rubel", martialArtType: kickBoxer)

print(coach.name)
print(coach.martialArtType.name)
print(coach.martialArtType.punchSpeed)


print(coach2.name)
print(coach2.martialArtType.name)
print(coach2.martialArtType.punchSpeed)

enum OptionalPunchSpeed {
    case none
    case some(Int)
}
enum optionalPunchPower {
    case none
    case some(Int)
}

enum OptionalStamina {
    case none
    case some(Int)
}

struct Boxer2 {
    var punchSpeed: OptionalPunchSpeed
    var punchPower: optionalPunchPower
    var punchStamina: OptionalStamina
}


let myBoxer2 = Boxer2(punchSpeed: .none, punchPower: .none, punchStamina: .some(20))

print(myBoxer2.punchSpeed)
print(myBoxer2.punchPower)
print(myBoxer2.punchStamina)


func returnArgumentValues<A,B>(fa:A, sa:B) -> String{
    return "\(fa),\(sa)"
}

print(returnArgumentValues(fa: "Dulal", sa: "Hossain"))
print(returnArgumentValues(fa: 20, sa: 30))
print(returnArgumentValues(fa: myBoxer2, sa: coach2))
