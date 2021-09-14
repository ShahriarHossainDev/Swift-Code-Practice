import UIKit

enum Computer {
    case destop, laptop, macbook, mobile
}

struct iPhone {
    let name: String
    let screenType: String
    let type: Computer = .mobile
}

struct Macbook {
    let name: String
    let type:Computer = .macbook
}

var myiPhone = iPhone(name: "iPhone 6s", screenType: "Touch Screen")
var myIphoneName = myiPhone.name
var myIphoneType = myiPhone.screenType

print(myIphoneName)
print(myIphoneType)

var myMac = Macbook(name: "Macbook pro 2013")
print(myMac.name)
