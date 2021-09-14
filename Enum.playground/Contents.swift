import UIKit

enum Animal {
    case lion
    case tiger
    case cat
}

func specifyAnimal(_ animal: Animal){
    switch animal {
    case .lion, .tiger:
        print("not pet")
    case .cat:
        print("Pet")
    default:
        print("default")
    }
}

let cat:Animal = Animal.cat
specifyAnimal(cat)
let tiger:Animal = Animal.tiger
specifyAnimal(tiger)


enum Computer: Int {
    case iMac = 9, macbookPro, iPhone7, iPhone6
    
}

let ir = Computer.iMac.rawValue
let mr = Computer.macbookPro.rawValue
let iphr = Computer.iPhone7.rawValue
let iph6 = Computer.iPhone6.rawValue


enum Sport : Int {
    case boxing = 20
    case kickBoxing = 50
    case judu = 100
    case football = 200
}


print(Sport.boxing.rawValue)

func multBoxingRawValue(sp: Sport) -> Int{
    return Sport.boxing.rawValue * sp.rawValue
}

multBoxingRawValue(sp: Sport.judu)
let ft = Sport(rawValue: 200)
let j = Sport(rawValue: 100)

enum Gender: Int {
    case male = 1 , female = 2
}

let male = Gender.male
male.rawValue

let female = Gender.female
female.rawValue

enum OutCome {
    case victory(String)
    case failure(String)
}

func evaluateSport(_ sport: Sport) -> OutCome{
    switch sport {
    case .boxing:
        return .victory("Awesome")
    default:
        return .failure("Bad luck")
    }
}

let oc = evaluateSport(.boxing)

switch oc {
case .victory:
    print("Great")
default:
    print("Bad luck")
}
