import UIKit
import FileProviderUI
import FileProvider
import AVFoundation

class Journal{
    var entries: [String] = []
    var count = 0
    
    func add(_ text: String) -> Int {
        count += 1
        entries.append("\(count): \(text)")
        return count - 1
    }
    
    func remove(_ index: Int){
        entries.remove(at: index)
    }
    
    func save(_ filename: String, _ overwrite: Bool = false){
        // save to a file
    }
    
    func load(_ fileName:String){
        //
    }
    func load(_ uri: URL){
        
    }
}

class Persistence {
    func saveToFile(_ journal: Journal, _ fileName:String, _ overwride: Bool){
        
    }
}

 let j = Journal()
let me = j.add("I cried today.")
let bug = j.add("I am a bug")
 print(j.count)
j.remove(bug)
print("===")
print(j.count)
 let p = Persistence()
p.saveToFile(j, "journame", true)
