import UIKit

let martialArts = ["Boxing","KickBoxing","Karate","Judo","Jujitsu"]

func transformUpperCase(input: String) -> String {
    return input.uppercased()
}
var upperCassed:[String] = []

for ma in martialArts {
    let upc = transformUpperCase(input: ma)
    upperCassed.append(upc)
}
print(upperCassed)

func myOwnMapFunction<EnteredDataType, OutputDataType>( enteredData:[EnteredDataType], change:(EnteredDataType)->(OutputDataType)) -> [OutputDataType] {
    
    var dataOutputs: [OutputDataType] = []
    for data in enteredData {
        let outputComponent = change(data)
        dataOutputs.append(outputComponent)
    }
    return dataOutputs
}

let lowerCasedMartialArtsB =  myOwnMapFunction(enteredData: martialArts, change: transformUpperCase)

print(lowerCasedMartialArtsB)

let uppercasedArs = martialArts.map(transformUpperCase)
print(uppercasedArs)

martialArts.map { (str) -> String in
    return str
}

let lowerCasedArtD = martialArts.map {
    $0.lowercased()
}
print(lowerCasedArtD)

let moreThan7Letters = martialArts.filter {
    $0.count > 7
}
print(moreThan7Letters)

func multiplyValuesOfIntegerArrayTogether(intValues: [Int]) -> Int {
    return intValues.reduce(1,*)
}

print(multiplyValuesOfIntegerArrayTogether(intValues: [40,50]))
