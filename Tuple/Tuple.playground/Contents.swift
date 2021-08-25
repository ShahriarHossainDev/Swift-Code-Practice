import UIKit

let flight = ("LAX", 747)
print("We're flying to \(flight.0) in a \(flight.1)")

let a = ("AMS", 737)
let b = ("LAX", 737)

a == b // Is "false", tuples are equatable because String and Int are

let c = ("AMS", "A330-800")

//Decomposing Tuples
let flight1 = (airport: "LAX", airplane: 747, heading: 270)
print("We're flying a \(flight1.airplane) towards \(flight1.airport) with heading \(flight1.heading) degrees.")


let (airport, _, heading) = ("LAX", 747, 270)
print(airport)

func getStatusCode() -> (Int, String) {
    return (404, "Not Found")
}

let (code, text) = getStatusCode()
print("The request returned with status code \(code) and said: '\(text)'")


func split(name: String) -> (firstName: String, lastName: String) {
    let split = name.components(separatedBy: " ")
    return (split[0], split[1])
}

let parts = split(name: "Paul Hudson")
parts.0
parts.1
parts.firstName
parts.lastName

class Flights {
    var airport:String
    var airplane:Int
}

let flights = Flights(airport: "AMS", airplane: 330)
print("We're going to \(flights.airport)...")

let flights1 = (airport: "AMS", airplane: 330)
print("We're going to \(flights1.airport)...")

typealias Flights = (airport: String, airplane: Int)
let flights2:Flights = ("HND", 737)
print("We're going to \(flights2.airport)...")
