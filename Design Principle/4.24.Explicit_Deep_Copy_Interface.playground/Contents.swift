import UIKit

import UIKit

protocol Copying{
    // the 'required' keyword is only used in classes
    //init(copyFrom other:Self)
    func clone() -> Self
}

class Address: CustomStringConvertible, Copying{
    
    var city: String
    var district: String
    
    init(city: String, district: String) {
        self.city = city
        self.district = district
    }
    func clone() -> Self {
        return cloneImp()
    }
    
    private func cloneImp<T>() -> T{
        return Address.init(city: city, district: district) as! T

    }
    var description: String{
        return "City \(city), district: \(district)"
    }
}
struct Employe: CustomStringConvertible, Copying{
    var name: String
    var address: Address
    
    init(name: String, address: Address) {
        self.name = name
        self.address = address
    }
  
    func clone() -> Employe {
        return cloneImpl()
    }
    private func cloneImpl<T>() -> T
    {
        return Employe.init(name: name, address: address.clone()) as! T
    }
    var description: String{
        return "\(name) is employee, address:\(address)"
    }
}


var ashik = Employe.init(name: "Ashik uddin", address: Address.init(city: "Agrabad", district: "Chitagong"))
print(ashik.description)

var nasser = ashik.clone()
nasser.name = "Nasser munsi"
let asAdr = ashik.address.clone()
asAdr.city = "Gulshan"
asAdr.district = "Dhaka"
nasser.address = asAdr
print(nasser)
print(ashik.description)
