import UIKit


var animalNames = ["African Lion",
"fox",
"Bear",
"tiger",
"Dolfin"]

animalNames.append("Leapard")
animalNames = animalNames + ["Cat"]
animalNames += ["Dog", "Fish", "Rat"]
animalNames.insert("Cow", at: 4)

print(animalNames)

animalNames.removeLast()
animalNames.removeFirst()
animalNames.remove(at: 0)

let sorA = animalNames.sorted { (a, b) -> Bool in
    a < b
}
print(sorA)


var intAray = [1,2,3,4,5,6,7,8,9,10]
var animals = ["Dog","Cat","Cow","Tiger","Bear","Rat","Horse",]

for intV in intAray {
    print(intV)
}

for anm in animals {
    print(anm)
}

for (index, animalName) in animals.enumerated() {
    print("\(index): \(animalName)")
}

