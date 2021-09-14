import UIKit

/// part 1
protocol Boxing{
    func throwJab()
    func throwCross()
    func throwHook()
    func throwUppercut()

    var stamina: Int {get set}
    var punchSpeed: Int {get}
    var punchPower: Int {get}
    var punchSkill: Int {get}
}

class Boxer: Boxing{
    
    func throwJab() {
        print("Jab")
    }
    
    func throwCross() {
        print("Cross")
    }
    func throwHook() {
        print("Hook")

    }
    
    func throwUppercut() {
        print("Uppercut")

    }
    
    var stamina: Int
    
    var punchSpeed: Int
    
    var punchPower: Int
    
    var punchSkill: Int {
        return punchSpeed * punchPower * stamina
    }
    
    init(stamina: Int, punchSpeed: Int, punchPower: Int) {
        self.stamina = stamina
        self.punchPower = punchPower
        self.punchSpeed = punchSpeed
    }
}

var myBoxer: Boxer = Boxer(stamina: 10, punchSpeed: 9, punchPower: 4)

myBoxer.punchSpeed
myBoxer.stamina
myBoxer.punchSpeed

myBoxer.throwJab()
myBoxer.throwCross()
myBoxer.throwUppercut()
myBoxer.throwHook()

myBoxer.stamina = 20
myBoxer.punchSpeed = 30

print(myBoxer.punchSpeed)
print(myBoxer.punchSkill)

protocol KickBoxing: Boxing {
    func throwKick()
    
    var kickPower: Int {get}
    var kickSpeed: Int {get}
}


class KickBoxer: KickBoxing{
    func throwKick() {
        print("kick")
    }
    
    var kickPower: Int
    
    var kickSpeed: Int
    
    func throwJab() {
        print("kick jab")
    }
    
    func throwCross() {
        print("kick cross")

    }
    
    func throwHook() {
        print("kick hook")

    }
    
    func throwUppercut() {
        print("kick uppercut")

    }
    
    var stamina: Int
    
    var punchSpeed: Int
    
    var punchPower: Int
    
    var punchSkill: Int
    
    
    init(stamina: Int, punchSpeed: Int, punchPower: Int, punchSkill: Int,kickPower:Int,kickSpeed: Int) {
        self.stamina = stamina
        self.punchSpeed = punchSpeed
        self.punchPower = punchPower
        self.punchSkill = punchSkill
        self.kickPower = kickPower
        self.kickSpeed = kickSpeed
    }
}

let myKickBoxer = KickBoxer(stamina: 500, punchSpeed: 200, punchPower: 400, punchSkill: 240, kickPower: 600, kickSpeed: 100)

myKickBoxer.stamina
myKickBoxer.punchSkill
myKickBoxer.punchSpeed
myKickBoxer.punchPower
myKickBoxer.kickPower
myKickBoxer.kickSpeed

myKickBoxer.throwJab()
myKickBoxer.throwKick()
myKickBoxer.throwHook()
myKickBoxer.throwUppercut()
myKickBoxer.throwCross()

protocol Computer {
    associatedtype RamType
    
    func turnOn()
    func turnOff()
    func nameOfOS() -> String
    func canCalculateHeavyTasks() -> Bool
    func returnAmountOfRam() -> RamType
    
    var speed: Int {get}
    var power: Int {get}
}

class iPhone7: Computer {
    
    func turnOn(){
        print("iPhone 7 is turn on")
    }
    func turnOff(){
        print("iPhone 7 is turn off")

    }
    func nameOfOS() -> String{
        print("iPhone 7 os")
        return "iOS7"
    }
    func canCalculateHeavyTasks() -> Bool{
        return true
    }
    func returnAmountOfRam() -> Int{
        return 8
    }
    
    var speed: Int
    var power: Int
    
    init(speed: Int,power: Int) {
        self.speed = speed
        self.power = power
    }
}

let myIphone7 = iPhone7.init(speed: 500, power: 800)
print(myIphone7.power)
print(myIphone7.speed)
myIphone7.turnOn()
myIphone7.turnOff()
myIphone7.nameOfOS()
myIphone7.canCalculateHeavyTasks()


protocol Screen{
    func specifyScreen() -> String
}

class GalaxyS6: Computer, Screen{
    func turnOn(){
        print("galaxy is turn on")
    }
    func turnOff(){
        print("galaxy is turn off")

    }
    func nameOfOS() -> String{
        return "Galazy android"
    }
    func canCalculateHeavyTasks() -> Bool{
        return true
    }
    func returnAmountOfRam() -> String {
        return "\(speed)"
    }
    
    var speed: Int
    var power: Int
    
    init(speed: Int, power: Int) {
        self.speed = speed
        self.power = power
    }
    
    func specifyScreen() -> String{
        return "Galaxy screen"
    }

}


let galaxy = GalaxyS6.init(speed: 10, power: 9)
print(galaxy.power)
print(galaxy.speed)

galaxy.turnOff()
galaxy.turnOn()
let heavyt = galaxy.canCalculateHeavyTasks()
let screen = galaxy.specifyScreen()


protocol ConvertIntToDouble{
    
    func convertToDouble() -> Double
}

extension Int: ConvertIntToDouble{
    func convertToDouble() -> Double {
        return Double(self)
    }
}

let d = 7.convertToDouble()
print(d)

class BoxerClass:Boxing {
    
    func throwJab(){
        print("Boxer Class Jab")
    }
    func throwCross(){
        print("Boxer Class cross")

    }
    func throwHook(){
        print("Boxer Class hook")

    }
    func throwUppercut(){
        print("Boxer Class uppercut")

    }
    
    var stamina: Int = 20
    var punchSpeed: Int = 23
    var punchPower: Int = 43
    var punchSkill: Int = 2
}


let myBoxerC = BoxerClass()
myBoxerC.throwJab()
myBoxerC.throwHook()
myBoxerC.throwCross()
myBoxerC.throwUppercut()
myBoxerC.punchPower

struct BoxerStruct: Boxing{
    
    func throwJab(){
        print("Boxer Struct Jab")
    }
    func throwCross(){
        print("Boxer Struct cross")
        
    }
    func throwHook(){
        print("Boxer Struct hook")
        
    }
    func throwUppercut(){
        print("Boxer Struct uppercut")
        
    }
    
    var stamina: Int = 20
    var punchSpeed: Int = 23
    var punchPower: Int = 43
    var punchSkill: Int = 2
}

let myBoxerStruct = BoxerStruct()

myBoxerStruct.throwJab()
myBoxerStruct.throwHook()
myBoxerStruct.throwCross()
myBoxerStruct.throwUppercut()
myBoxerStruct.punchPower


enum BoxerEnum: Boxing{
  
    case amature
    case professional
    
    func throwJab(){
        switch self {
        case .amature:
            print("Boxer Enum  amature Jab")

        default:
            print("Boxer Enum  professional Jab")
        }
    }
    func throwCross(){
        print("Boxer Enum cross")
        
    }
    func throwHook(){
        print("Boxer Enum hook")
        
    }
    func throwUppercut(){
        print("Boxer Enum uppercut")
    }
    
    var stamina: Int {
        get{
            switch self {
            case .amature:
                return 9
            case .professional:
                return 90
            }
        }
        set{
            
        }
    }
    
    var punchSpeed: Int {
        switch self {
        case .amature:
            return 400
        default:
            return 780
        }
    }
    
    var punchPower: Int{
        switch self {
        case .amature:
            return 2300
        default:
            return 2000
        }
    }
    
    var punchSkill: Int{
        return 50
    }
}


var myBoxerOfClss: Boxing = BoxerClass()
print(myBoxerOfClss.stamina)
print(myBoxerOfClss.punchPower)
print(myBoxerOfClss.punchSpeed)
print(myBoxerOfClss.punchSkill)

myBoxerOfClss.throwJab()
myBoxerOfClss.throwUppercut()
myBoxerOfClss.throwCross()
myBoxerOfClss.throwHook()

var myBoxerOfStruct: Boxing = BoxerStruct()
print(myBoxerOfStruct.stamina)
print(myBoxerOfStruct.punchPower)
print(myBoxerOfStruct.punchSpeed)
print(myBoxerOfStruct.punchSkill)

myBoxerOfStruct.throwJab()
myBoxerOfStruct.throwUppercut()
myBoxerOfStruct.throwCross()
myBoxerOfStruct.throwHook()

var myBoxerOfEnum: Boxing = BoxerEnum.amature


print(myBoxerOfEnum.stamina)
print(myBoxerOfEnum.punchPower)
print(myBoxerOfEnum.punchSpeed)
print(myBoxerOfEnum.punchSkill)

myBoxerOfEnum.throwJab()
myBoxerOfEnum.throwUppercut()
myBoxerOfEnum.throwCross()
myBoxerOfEnum.throwHook()

var arrayOfBoxers: [Boxing] = [myBoxerOfClss, myBoxerStruct, myBoxerOfEnum]
for boxer in arrayOfBoxers {
    print(boxer)
}


protocol Artist{
    var name: String { get }
    var art: String {get}
    func performArt()
}

class Actor: Artist {
    
    var name: String
    var art: String
    init(name: String, art: String) {
        self.name = name
        self.art = art
    }
    
    func performArt() {
        print("\(name) is \(art)")
    }
}


let actor: Actor = Actor(name: "Korn", art: "Heroine")
actor.performArt()

class Singer: Artist{
    var name: String
    var art: String
    init(name: String, art: String) {
        self.name = name
        self.art = art
    }
    func performArt() {
        print("\(name) is \(art)")
    }
}

let singer: Artist = Singer(name: "Arif", art: "Singing")
singer.performArt()

var artists = [Actor(name: "Mamun", art: "Chocolate here"), actor, singer]
for artist in artists {
    artist.performArt()
}

class ChinaMobile{
   
    let name: String
    var power: Int
    var speed: Int
    var mobileId: Int
    
    init(name: String, power: Int, speed: Int, mobileId: Int) {
        self.name = name
        self.power = power
        self.speed = speed
        self.mobileId = mobileId
    }
}

extension ChinaMobile: Equatable {
    static func == (lhs: ChinaMobile, rhs: ChinaMobile) -> Bool {
        return lhs.name == rhs.name && lhs.speed == rhs.speed && lhs.mobileId == rhs.mobileId && lhs.power == rhs.power
    }
    public static func != (lhs: ChinaMobile, rhs: ChinaMobile) -> Bool{
        return lhs.name != rhs.name || lhs.speed != rhs.speed || lhs.mobileId != rhs.mobileId || lhs.power != rhs.power

    }
}

extension ChinaMobile: Comparable {
    
    static func < (lhs: ChinaMobile, rhs: ChinaMobile) -> Bool{
        return lhs.mobileId < rhs.mobileId
    }
    
    static func <= (lhs: ChinaMobile, rhs: ChinaMobile) -> Bool{
        return lhs.mobileId <= rhs.mobileId
    }
    
    static func >= (lhs: ChinaMobile, rhs: ChinaMobile) -> Bool{
        return lhs.mobileId >= rhs.mobileId
    }
    
    static func > (lhs: ChinaMobile, rhs: ChinaMobile) -> Bool{
        return lhs.mobileId > rhs.mobileId
    }
}


extension ChinaMobile: Hashable{
  /*
    var hashValue: Int {
        return mobileId
    }
    */
    func hash(into hasher: inout Hasher){
        hasher.combine(mobileId)
    }
}

let cm1 = ChinaMobile(name: "iphone 4", power: 200, speed: 2, mobileId: 1)
let cm2 = ChinaMobile(name: "iphone 6", power: 300, speed: 3, mobileId: 2)
let cm3 = ChinaMobile(name: "iphone 6", power: 300, speed: 3, mobileId: 3)
let cm4 = ChinaMobile(name: "iphone 7", power: 500, speed: 5, mobileId: 4)
let cm5 = ChinaMobile(name: "iphone 8", power: 600, speed: 9, mobileId: 5)
let cm6 = ChinaMobile(name: "iphone 8", power: 500, speed: 6, mobileId: 6)

cm1 == cm2
cm5 == cm6
(cm2 == cm3)

cm4 != cm3
cm2 != cm3

cm1 < cm2
cm1 > cm2
cm3 < cm4
cm3 <= cm4
cm1 <= cm2
cm1 >= cm2
cm1 <= cm2

let mobiles: Array<ChinaMobile> = [cm1,cm2,cm3,cm4,cm5,cm6]
let mobiles2: Array<ChinaMobile> = [cm2,cm3,cm4,cm5,cm6]

let sortedMobiles = mobiles.sorted()
for sm in sortedMobiles {
    print("\(sm.name):\(sm.mobileId)")
}
mobiles.starts(with: [cm4,cm3])
mobiles.starts(with: [cm1,cm2])
mobiles.contains(cm4)
mobiles.elementsEqual(mobiles2)
mobiles.elementsEqual([cm1,cm2,cm3,cm4,cm5,cm6])


let dic:[String:String] = [cm1.name: "dd"]
let mobileDictionary: [Int:ChinaMobile] = [
cm1.mobileId : cm1,
cm2.mobileId : cm2,
cm3.mobileId : cm3,
cm4.mobileId : cm4,
cm5.mobileId : cm5,
cm6.mobileId : cm6]

let mobileDictionary2: [Int:ChinaMobile] = [
    cm4.mobileId:cm4,
    cm6.mobileId:cm6,
    cm3.mobileId:cm3]

let mobileDictionary3: [ChinaMobile : String] = [cm6:cm6.name]
print(mobileDictionary3)

let mobileSet: Set<ChinaMobile> = [cm1, cm2, cm3,cm4,cm5,cm6]
protocol CustomrBoolType{
    var booleanValue: Bool {get}
}

extension ChinaMobile: CustomrBoolType{
    var booleanValue: Bool {
        return power + speed > 100
    }
}
enum E: CustomrBoolType {
    case a
    var booleanValue: Bool {
        return true
    }

}
struct S:CustomrBoolType{
    var booleanValue: Bool = false
}
extension ChinaMobile: CustomStringConvertible {
    var description: String{
        return "\(self.name):\(mobileId):\(speed)"
    }
}
let cm9 = ChinaMobile(name: "iPhone10", power: 90, speed: 14, mobileId: 9)

cm9.booleanValue



cm9.description
