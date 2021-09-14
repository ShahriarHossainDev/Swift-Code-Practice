import UIKit


let dictionaryA = Dictionary<String, Int>()
let dictionaryB:[String:Int] = [:]

var playerDict = ["Masrafi":"Bowler",
                  "Mahmudullah":"Allrounder"]
playerDict["Somya"] = "Batsman"
print(playerDict)
print(playerDict["Somya"]!)
playerDict.values
print(playerDict.keys)
print(playerDict.count)
print(playerDict.isEmpty)

var bird:[String:String] = ["Name":"Moina","color":"Blue","Power":"20"]
bird.updateValue("80", forKey: "Power")
print(bird)
//bird.removeValue(forKey: "Power")
//bird.removeAll()

for (key,value) in bird {
    print("\(key)-\(value)")
}

for key in bird.keys{
    print("\(key), " ,terminator:"")
}
for key in bird.keys{
    print("\(key)")
}

let birdkeys = bird.keys.reduce("", {
    $0 +  "\($1), "
})
