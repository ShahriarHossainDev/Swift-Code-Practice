import UIKit

class Persion: CustomStringConvertible{
    // Address
    var streetAddress = "", postcode = "", city = ""
    
    // Employeement
    var companyName = "", position = ""
    var annualIncome = 0
    
    var description: String {
        return "Person live at \(streetAddress), postcode:\(postcode) city:\(city)" + "and He work at \(companyName), as a \(position) earning \(annualIncome)."
    }
}

class PersonBuilder {
    var person = Persion()
    var lives: PersonAddressBuilder{
        return PersonAddressBuilder(person: person)
    }
    var works: PersonJobBuilder{
        return PersonJobBuilder(person: person)
    }
    // no implicit conversion, so ...
    func build() -> Persion{
        return person
    }
}

class PersonJobBuilder: PersonBuilder {
   internal init(person: Persion) {
        super.init()
    self.person = person
    }
    
    func at(_ companyName: String) -> PersonJobBuilder {
        person.companyName = companyName
        return self
    }
    
    func asA(_ position: String) -> PersonJobBuilder {
        person.position = position
        return self
    }
    
    func earning(_ amount: Int) -> PersonJobBuilder {
        person.annualIncome = amount
        return self
    }
}

class PersonAddressBuilder: PersonBuilder {
    internal init(person: Persion) {
        super.init()
        self.person = person
    }
    
    func at(_ sa: String) -> PersonAddressBuilder {
        person.streetAddress = sa
        return self
    }
    
    func withPostcode(_ pc: String) -> PersonAddressBuilder {
        person.postcode = pc
        return self
    }
    
    
    func inCity(_ city: String) -> PersonAddressBuilder {
        person.city = city
        return self
    }
}

let pb = PersonBuilder()
let p = pb
.lives.at("123 London road").inCity("Mirpur").withPostcode("1215")
.works.at("Pathao").asA("Sr Software Engineer").earning(200000).build()
print(p)
