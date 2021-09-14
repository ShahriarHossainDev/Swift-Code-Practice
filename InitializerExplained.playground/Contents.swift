import UIKit

enum Sport: String {
    case boxing = "Boxing"
    case football = "Football"
    case cricket = "Cricket"
    
    init(){
        self = .cricket
    }
    func sportTitle() -> String{
        return self.rawValue
    }
}

var sp = Sport()

