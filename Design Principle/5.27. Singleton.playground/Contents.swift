import UIKit


protocol Database{
    func getPopulation(name: String) -> Int
}

class SingletonDatabase: Database{
    func getPopulation(name: String) -> Int {
        return 9
    }
    static var instanceCount = 0
    static var instance = SingletonDatabase()
    private init(){
        type(of: self).instanceCount += 1
        
        
    }
}
