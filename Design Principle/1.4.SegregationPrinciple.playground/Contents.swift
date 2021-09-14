import UIKit

class Document {
    
}

protocol Machine{
    func print(d:Document)throws
    func scan(d:Document) throws
    func fax(d:Document) throws
}

class MultiFunctionPrinter: Machine {
    func print(d: Document) {
        // right
    }
    
    func scan(d: Document) {
        
    }
    
    func fax(d: Document) {
        
    }
}

enum NorequiredFunciton: Error{
    case doesNotFax
    case doesNotScan
}
class OldFashionPrinter: Machine{
    func print(d: Document) {
        //
    }
    func fax(d: Document) throws {
        throw NorequiredFunciton.doesNotFax
    }
    func scan(d: Document) throws {
        throw NorequiredFunciton.doesNotScan
    }
}


protocol Printer{
    func print(d: Document)
}
protocol Scaner {
    func scan(d: Document)
}

protocol Fax {
    func fax(d: Document)
}


class OrdinaryPrinter: Printer {
    func print(d: Document) {
        //
    }
}

class Photocopy: Printer, Scaner{
    func print(d: Document) {
        
    }
    func scan(d: Document) {
        
    }
}

class MultiFuncDevice: Printer, Scaner, Fax {
    func print(d: Document) {
        
    }
    func scan(d: Document) {
        
    }
    func fax(d: Document) {
        
    }
}

protocol MultiFuncProtocol: Printer,Scaner,Fax{
    
}

struct MultiFucnMachine: MultiFuncProtocol{
    func print(d: Document) {
        
    }
    
    func scan(d: Document) {
        
    }
    
    func fax(d: Document) {
        
    }
}
