import UIKit

class HtmlElement: CustomStringConvertible{
    var name: String = ""
    var text: String = ""
    private let indenSize = 2
    var elements = [HtmlElement]()
    
    init() {}
    
    init(name: String, text: String) {
        self.name = name
        self.text = text
    }
    
    private func description(_ indent: Int) -> String {

        var result:String = ""
        let i = String(repeating: " ", count: indent)
        result += "\(i)<\(name)>\n"
        if !text.isEmpty {
           result += String(repeating: " ", count: indenSize * (indent + 1))
            result += text
            result += "\n"
        }
        
        for e in elements {
            result += e.description(indent+1)
        }
        result += "\(i)<\(name)>\n"
        return result
    }
    var description: String {
        return description(0)
    }
}

class HtmlBuilder: CustomStringConvertible {
    private let rootName: String
    var root = HtmlElement()
    
    init(rootName: String) {
        self.rootName = rootName
        root.name = rootName
    }
    
    // not flucent
    func addChild(name: String, text: String) {
        let e = HtmlElement.init(name: name, text: text)
        root.elements.append(e)
    }
    
    func addChildFlucent(childName :String, chlidText: String)  -> HtmlBuilder{
        let e = HtmlElement.init(name: childName, text: chlidText)
        root.elements.append(e)
        return self
    }
    var description: String {
        return root.description
    }
    
    func clear() {
        root = HtmlElement.init(name: rootName, text: "")
    }
}

let htmlE = HtmlElement.init(name: "q", text: "Dulal")
let htmlE2 = HtmlElement.init(name: "p", text: "Hossain")
let htmlE3 = HtmlElement.init(name: "r", text: "Nim")

htmlE.elements = [htmlE2,htmlE3]
let st = htmlE.description
print(st)



let builder = HtmlBuilder.init(rootName: "ul")
//builder.clear()
builder.addChild(name: "li", text: "Sadek")
builder.addChild(name: "li", text: "Nahid")
builder.addChild(name: "li", text: "Nipe")
builder.addChild(name: "li", text: "Simu")
builder.addChildFlucent(childName: "l2", chlidText: "Urmi")
print(builder)



class CodeBuilder : CustomStringConvertible
{
    var name: String = ""
    var type: String = ""
    init(_ rootName: String)
    {
        self.name = rootName
    }
    
    func addField(called name: String, ofType type: String) -> CodeBuilder
    {
        // todo
        self.name = name
        self.type = type
        return self
    }
    
    public var description: String
    {
        // todo
        return "name\(name), type:\(type)"
    }
}
let cb = CodeBuilder("Person").addField(called: "Sumon", ofType: "String").addField(called: "Mamun", ofType: "str")
print(cb.description)
