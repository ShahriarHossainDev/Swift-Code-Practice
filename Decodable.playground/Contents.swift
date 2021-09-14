import UIKit


struct User: Codable{
    var name: String
    var age: Int
}

extension User {
    struct CodingData: Codable {
        struct Container: Codable {
            var fullName: String
            var userAge: Int
        }
        var userData: Container
    }
}

extension User.CodingData {
    var user: User {
        return User(
            name: userData.fullName,
            age: userData.userAge
        )
    }
}

var data: Data?
var cData: Data?

do {
    let user:User = User(name: "Dulal", age: 30)
    let encoder = JSONEncoder()
    data = try encoder.encode(user)
    print(data!)
} catch let err {
    print(err.localizedDescription)
}


if let data = data  {
    let decoder:JSONDecoder = JSONDecoder()
    let userJson = try decoder.decode(User.self, from: data)
    print(userJson)
}




do {
    let encoder = JSONEncoder()
    let u = User.CodingData(userData: User.CodingData.Container.init(fullName: "Kamal", userAge: 56))
    cData = try encoder.encode(u)
} catch let err {
    print(err.localizedDescription)
}


if let data = cData  {
    
    let decoder = JSONDecoder()
    decoder.keyDecodingStrategy = .convertFromSnakeCase
    
    let codingData = try decoder.decode(User.CodingData.self, from: data)
    let user = codingData.user
    print(user.name)
}


