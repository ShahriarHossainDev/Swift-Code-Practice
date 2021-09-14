import UIKit

class Leopard {
    let name: String
    var power: Int
    var speed: Int
    
    private init(name: String , power: Int, speed: Int) {
        self.name = name
        self.power = power
        self.speed = speed
    }
    static let myOnlyLeopardInstance  = Leopard(name: "My Leopard", power: 5, speed: 2)
}
 Leopard.myOnlyLeopardInstance.name

Leopard.myOnlyLeopardInstance.power = 500


class API
{
    static let shared = API()
    
    static let baseURL: URL = URL(string: "http://www.facebook.com")!
    
    private init()
    {
        // Set up API instance
    }
    
    func getValue() -> Int {
        return 100
    }
}

API.shared.getValue()


class APIManager
{
    static let shared = APIManager()
    var isRequestPending = false
    
    private init() { }
    
    func makeAPIRequest()
    {
        if isRequestPending {
            return
        }
        
        isRequestPending = true
        
        // Make the API HTTPS request...
    }
    
    func onReturnAPIRequest()
    {
        isRequestPending = false
        
        // Do something with request data...
    }
}


// Shared URL Session
let sharedURLSession = URLSession.shared

// Default File Manager
let defaultFileManager = FileManager.default

// Standard User Defaults
let standardUserDefaults = UserDefaults.standard

// Default Payment Queue
//let defaultPaymentQueue = SKPaymentQueue.default()

class NetworkManager {
    
    // MARK: - Properties
    
    static let shared = NetworkManager(baseURL: API.baseURL)
    
    // MARK: -
    
     let baseURL: URL
    
    // Initialization
    
    private init(baseURL: URL) {
        self.baseURL = baseURL
    }
    
}
