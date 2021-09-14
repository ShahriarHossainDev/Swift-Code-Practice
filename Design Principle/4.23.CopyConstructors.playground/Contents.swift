import UIKit

protocol Copying{
    // the 'required' keyword is only used in classes
    init(copyFrom other:Self)
}

class Address: CustomStringConvertible, Copying{
    
    var city: String
    var district: String
    
    init(city: String, district: String) {
        self.city = city
        self.district = district
    }
    required init(copyFrom other: Address) {
        self.city = other.city
        self.district = other.district
    }
    
    var description: String{
        return "City \(city), district: \(district)"
    }
}
class Employe: CustomStringConvertible, Copying{
    var name: String
    var address: Address
    
    init(name: String, address: Address) {
        self.name = name
        self.address = address
    }
    required init(copyFrom other: Employe) {
        self.name = other.name
        
        self.address = Address.init(city: other.address.city, district: other.address.district)
    }
    var description: String{
        return "\(name) is employee, address:\(address)"
    }
}


var ashik = Employe.init(name: "Ashik uddin", address: Address.init(city: "Agrabad", district: "Chitagong"))
print(ashik.description)

var nasser = Employe.init(copyFrom: ashik)
nasser.name = "Nasser munsi"
let asAdr = Address.init(copyFrom: ashik.address)
asAdr.city = "Gulshan"
asAdr.district = "Dhaka"
nasser.address = asAdr
print(nasser)
print(ashik.description)
