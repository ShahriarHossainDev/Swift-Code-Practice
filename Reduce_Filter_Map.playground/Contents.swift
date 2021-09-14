import UIKit


var intValues =  [1,2,3,4,5,6,7,8,9,10]
var animals = ["Bear","Cat","Cow","Tiger", "Rat","Horse", "Dolphin"]


let sumR = intValues.reduce(0, +)
let subR = intValues.reduce(1, -)
let dibR = intValues.reduce(1, /)


let f = intValues.filter {
    $0 < 6
}
print(f)



extension Array{
   /* public __consuming func filter(_ isIncluded: (Element) throws -> Bool) rethrows -> [Element] {
        <#code#>
    }*/
    
    func filter2(_ isIncluded:(Element) -> Bool)->[Element]{
        
        var a:[Element] = []
        /*
        let sumc = { (a:Element) -> Bool in
            return true
        }*/
        for el in self {
            let su = isIncluded(el)
            if su {
                a.append(el)
            }
        }
        return a
    }
}

let r = intValues.filter2 { (a) -> Bool in
   return a < 9
}

print(r)

let animalNamrA = animals.filter { (a) -> Bool in
    a.contains("i")
}
print(animalNamrA)


let mapa = intValues.map { (a) -> Int in
    a * 2
}

print(mapa)

extension Array {/*
    public func map<T>(_ transform: (Element) throws -> T) rethrows -> [T] {
        <#code#>
    }*/
    func customMap<T>(_ transform: (Element) throws -> T) rethrows -> [T]  {
        var r: [T] = []
        for el in self {
            let f = try transform(el)
            r.append(f)
        }
        return r
    }
}

let mapr = intValues.customMap {
    $0 * 5
}
print(mapr)

let am = animals.customMap {
    $0.uppercased()
}
print(am)
